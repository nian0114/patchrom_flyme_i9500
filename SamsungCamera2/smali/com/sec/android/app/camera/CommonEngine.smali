.class public Lcom/sec/android/app/camera/CommonEngine;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;,
        Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;,
        Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;,
        Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;,
        Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;,
        Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;,
        Lcom/sec/android/app/camera/CommonEngine$CameraPreviewCallback;,
        Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;,
        Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;,
        Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;,
        Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;,
        Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;,
        Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;,
        Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;,
        Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;,
        Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;,
        Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;,
        Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;,
        Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;
    }
.end annotation


# static fields
.field protected static final AF_FAIL_SOUND:I = 0x2

.field protected static final AF_SUCCESS_SOUND:I = 0x1

.field private static final AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final AUTO_SHOT_NIGHT_OFF:I = 0x0

.field private static final AUTO_SHOT_NIGHT_ON:I = 0x1

.field private static final AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field protected static final CAMERA_FIRMWARE_INFO_FILE_REAR:Ljava/lang/String; = "/sys/class/camera/rear/rear_camfw"

.field protected static final CAMERA_LOADED_FW_INFO:Ljava/lang/String; = "/sys/class/camera/rear/rear_camfw_load"

.field protected static final CANCEL_AUTO_FOCUS:I = 0x5

.field protected static final CHANGE_STORAGE_TO_PHONE_MEMORY:I = 0x3

.field private static final DEFAULT_FOCUS_MODE:Ljava/lang/String; = "auto"

.field private static final DEFAULT_SCENE_MODE:Ljava/lang/String; = "auto"

.field protected static final DELAY_TIME_TO_CANCEL_AUTO_FOCUS:I = 0x1388

.field protected static final DELAY_TIME_TO_HIDE_FACE_RECT:I = 0x7d0

.field protected static final DELAY_TIME_TO_HIDE_FOCUS_RECT:I = 0x3e8

.field protected static final DELAY_TIME_TO_RESET_TOUCH_FOCUS:I = 0xbb8

.field public static final ERROR_BUFFER_OVERFLOW_FROM_RECORDER:I = -0x6

.field public static final ERROR_CAMCORDER_OPEN:I = -0x2

.field public static final ERROR_CAMERA_DTP:I = -0xd

.field public static final ERROR_CAMERA_OPEN:I = -0x1

.field public static final ERROR_INVALID_FIRMWARE_VERSION:I = -0x7

.field public static final ERROR_MEDIA_SERVER_DIED:I = -0x8

.field public static final ERROR_PREVIEW_TIMEOUT:I = -0xb

.field public static final ERROR_RECORDING:I = -0x4

.field public static final ERROR_RECORDING_FAIL_LACK_OF_HW_CODEC_RESOURCE:I = -0xc

.field public static final ERROR_RUNTIME_EXCEPTION:I = -0x9

.field public static final ERROR_START_PREVIEW:I = -0x3

.field public static final ERROR_UNKNOWN_EXCEPTION:I = -0xa

.field public static final ERROR_UNKOWN_CALLBACK_FROM_DEVICE:I = -0x5

.field public static final FOCUSING:I = 0x1

.field public static final FOCUS_CANCELLED:I = 0x4

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_RESTART:I = 0x5

.field public static final FOCUS_SUCCESS:I = 0x2

.field protected static final HANDLER_MSG_END:I = 0x5

.field protected static final HANDLER_MSG_START:I = 0x1

.field private static final HDR_INDEX_ORIGINAL_IMG:I = 0x1

.field private static final HDR_INDEX_RESULT_IMG:I = 0x2

.field protected static final HIDE_FACE_RECT:I = 0x4

.field protected static final HIDE_FOCUS_RECT:I = 0x2

.field private static final IOBUSY_UNVOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

.field private static final IOBUSY_VOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

.field private static final I_FRAME_INTERVAL_FOR_30:I = 0x1

.field private static final I_FRAME_INTERVAL_FOR_60:I = 0x2

.field private static final MAX_DUAL_FHD_RECORD_TIME:I = 0x12c

.field private static final MAX_DUAL_HD_RECORD_TIME:I = 0x258

.field private static final MAX_SMOOTH_MOTION_RECORD_TIME:I = 0x258

.field private static final MAX_UHD_RECORD_TIME:I = 0x12c

.field private static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field public static final OPEN_RETRY_NUMBER:I = 0x0

.field public static final PREVIEW_CALLBACK_FORMAT_NV21:I = 0x0

.field public static final PREVIEW_CALLBACK_FORMAT_RGBA:I = 0x1

.field public static final RECORD_AUTHOR_PARAM:I = 0x0

.field protected static final RESET_TOUCH_FOCUS:I = 0x1

.field public static final RES_AUTOFOCUS_CANCELED:I = 0x2

.field public static final RES_AUTOFOCUS_FAIL:I = 0x0

.field public static final RES_AUTOFOCUS_FOCUSING:I = 0x3

.field public static final RES_AUTOFOCUS_RESTART:I = 0x4

.field public static final RES_AUTOFOCUS_SUCCESS:I = 0x1

.field public static SHUTTER_RECORDING_START:I = 0x0

.field public static SHUTTER_RECORDING_STOP:I = 0x0

.field public static SHUTTER_SOUND:I = 0x0

.field public static SHUTTER_SOUND_NIGHT_START:I = 0x0

.field public static final SHUTTER_TIMER_HANDLER_MSG:I = 0xa

.field private static final SINGLE_SHOT_BURST_OFF:I = 0x0

.field private static final SINGLE_SHOT_BURST_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CommonEngine"

.field protected static final URI_SEARCHING_IMAGE_ID:I = 0x0

.field protected static final URI_SEARCHING_INTERVAL:I = 0x1e

.field protected static final URI_SEARCHING_VIDEO_ID:I = 0x1

.field public static isSystemSoundEffectEnabled:Z

.field private static mDualCamcorderResolution:I

.field public static mLightPipShotCount:I

.field private static m_bIsRecordingThreadStopping:Z

.field private static m_bIsTouchAutoFocusing:Z

.field private static m_bIsTouchFocusPositioned:Z

.field public static m_bRestartTouchAF:Z


# instance fields
.field final SIOP_SYS_PROP:Ljava/lang/String;

.field private bFaceRectHidden:Z

.field private bIsAeAwbLocked:Z

.field private bIsHalfShutter:Z

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAeLockSupported:Z

.field private mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

.field private mAutoShotNight:I

.field private mAwbLockSupported:Z

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field protected mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mCaptureInitiated:Z

.field mCheckFileName:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoTitle:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field protected mDateTaken:J

.field protected mDateTakenForHDR:J

.field protected mDisplayOrientation:I

.field private mDualRecordingResolution:Ljava/lang/String;

.field private mErrorCallback:Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

.field protected mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

.field private mFaceDetectionCallback:Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

.field protected mFocusState:I

.field mGolfShotFileName:Ljava/lang/String;

.field private mGroupId:I

.field private mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

.field private mIsCalledSwitchToCameraSync:Z

.field private mIsContinousAFStopped:Z

.field private mIsFaceZoomed:Z

.field private mIsFinishOneShotPreviewCallback:Z

.field private mIsVideoCaptureIntent:Z

.field private mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

.field private mLandscapeActive:Z

.field protected mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

.field private mLastCapturedFileName:Ljava/lang/String;

.field private mLastCapturedTitle:Ljava/lang/String;

.field protected mLastContentUri:Landroid/net/Uri;

.field private mLastOrientation:I

.field private mLightPIPPictureHeight:I

.field private mLightPIPPictureWidth:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mMediaRecorderRecording:Z

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mNumOfSavedImageInHDR:I

.field private mNumberOfPictureSavingThread:I

.field protected mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

.field protected mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

.field protected mOnTimerEventListener:Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

.field protected mOpenCameraThread:Ljava/lang/Thread;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationOnTake:I

.field protected mOriginalViewFinderHeight:I

.field protected mOriginalViewFinderWidth:I

.field private mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

.field private mPanoramaStartThread:Ljava/lang/Thread;

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mPictureSavingThread:Ljava/lang/Thread;

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field private mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

.field private mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

.field private mRecordingInitiated:Z

.field protected mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

.field protected mRetry:I

.field private mSavedImageRichtoneCompleted:Z

.field private mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

.field private mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

.field private mSingleShotBurst:I

.field protected mStartPreviewThread:Ljava/lang/Thread;

.field private mStartRecordingThread:Ljava/lang/Thread;

.field protected mStateDepot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/AbstractCeState;",
            ">;"
        }
    .end annotation
.end field

.field protected mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

.field private mStopRecordingThread:Ljava/lang/Thread;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

.field private mTapArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

.field private mTouchAutoFocusActive:Z

.field protected mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

.field private mVideoFileLengthInByte:J

.field private mVideoRecordingTimeInMiliSecond:J

.field public maxFileSize:J

.field private savedSceneMode:Ljava/lang/String;

.field versionIsp:Ljava/lang/String;

.field versionPhone:Ljava/lang/String;

.field versionSensor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    .line 120
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    .line 121
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    .line 123
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bRestartTouchAF:Z

    .line 124
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->isSystemSoundEffectEnabled:Z

    .line 126
    sput v1, Lcom/sec/android/app/camera/CommonEngine;->mLightPipShotCount:I

    .line 127
    const/16 v0, 0x17

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_SOUND:I

    .line 130
    const/16 v0, 0x1d

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_SOUND_NIGHT_START:I

    .line 132
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_START:I

    .line 133
    const/16 v0, 0x15

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_STOP:I

    .line 328
    sput v1, Lcom/sec/android/app/camera/CommonEngine;->mDualCamcorderResolution:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 148
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    .line 151
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    .line 153
    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    .line 154
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 155
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 156
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 158
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 160
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTouchAutoFocusActive:Z

    .line 161
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    .line 163
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 164
    new-instance v0, Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CeRequestQueue;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    .line 165
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 166
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 167
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 169
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 170
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFinishOneShotPreviewCallback:Z

    .line 171
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mGroupId:I

    .line 173
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    .line 174
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mLandscapeActive:Z

    .line 175
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 178
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 186
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 191
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    .line 192
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 194
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 195
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 196
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    .line 198
    iput-wide v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    .line 199
    iput-wide v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 201
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 206
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    .line 207
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 208
    iput-wide v2, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 224
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    .line 225
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    .line 226
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    .line 251
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    .line 255
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    .line 257
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    .line 258
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    .line 259
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 260
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 261
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    .line 271
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 274
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    .line 275
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCallback:Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

    .line 276
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    .line 277
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    .line 278
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorCallback:Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

    .line 279
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    .line 280
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    .line 282
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 283
    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationOnTake:I

    .line 285
    const-string v0, "/sys/class/camera/rear/rear_checkfw"

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCheckFileName:Ljava/lang/String;

    .line 286
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    .line 287
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    .line 288
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->versionSensor:Ljava/lang/String;

    .line 290
    const-string v0, "sys.siop.curlevel"

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->SIOP_SYS_PROP:Ljava/lang/String;

    .line 297
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    .line 299
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    .line 300
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z

    .line 311
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mDualRecordingResolution:Ljava/lang/String;

    .line 313
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mLightPIPPictureWidth:I

    .line 314
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mLightPIPPictureHeight:I

    .line 319
    const-string v0, "auto"

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->savedSceneMode:Ljava/lang/String;

    .line 326
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    .line 330
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$1;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    .line 396
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateIdle;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/sec/android/app/camera/CeStateIdle;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitializing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateInitializing;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitialized;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateInitialized;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateStartingPreview;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateStartingPreview;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStatePreviewing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStatePreviewing;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateShutdown;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x6

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateShutdown;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateRecording;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x5

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateRecording;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

    .line 773
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    .line 783
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    .line 4378
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    .line 8983
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    .line 410
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 411
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 414
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    .line 423
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$602(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 427
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/CommonEngine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->setLastOrientation(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFinishOneShotPreviewCallback:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLightPIPPictureWidth:I

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/CommonEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLightPIPPictureWidth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLightPIPPictureHeight:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/CommonEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLightPIPPictureHeight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2308(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$2310(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/CommonEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getHDRFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/camera/CommonEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->openCameraDevice()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->setSystemSoundEffect()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 109
    sput-boolean p0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->makeVideoFileSlow()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/CommonEngine;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->renameTempFile()V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->registerVideo()V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/app/camera/CommonEngine;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    return p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    return p1
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 906
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 907
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    const-string v1, "CommonEngine"

    const-string v2, "Empty video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 913
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private cleanupTempFile()V
    .locals 3

    .prologue
    .line 916
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    const-string v1, "CommonEngine"

    const-string v2, "temp video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    return-void
.end method

.method private createVideoPath()V
    .locals 30

    .prologue
    .line 6340
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 6341
    .local v6, "calendar":Ljava/util/GregorianCalendar;
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 6342
    .local v22, "time":Landroid/text/format/Time;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    .line 6343
    .local v23, "timezone":Ljava/util/TimeZone;
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6344
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    .line 6346
    .local v10, "dateTaken":J
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    .line 6348
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->createVideoPathDir()Ljava/lang/String;

    move-result-object v7

    .line 6350
    .local v7, "cameraDirPath":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 6351
    const-string v26, "CommonEngine"

    const-string v27, "recording directory make fail"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6434
    :goto_0
    return-void

    .line 6358
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->getFileFormatFromProfile()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 6359
    const-string v13, ".mp4"

    .line 6360
    .local v13, "extension":Ljava/lang/String;
    const-string v20, "video/mp4"

    .line 6366
    .local v20, "mimeType":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 6367
    const-string v13, ".3gp"

    .line 6368
    const-string v20, "video/3gpp"

    .line 6372
    :cond_1
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 6373
    .local v9, "date":Ljava/util/Date;
    const-string v26, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6376
    .local v18, "filepart":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 6378
    .local v8, "currentAddress":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_3

    .line 6379
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 6383
    .local v21, "name":Ljava/lang/String;
    :goto_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 6384
    .local v15, "filename":Ljava/lang/String;
    move-object/from16 v24, v21

    .line 6385
    .local v24, "title":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 6388
    .local v12, "displayName":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6389
    .local v14, "f":Ljava/io/File;
    const/16 v16, 0x0

    .line 6390
    .local v16, "filenumber":I
    :goto_3
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 6391
    const-string v26, "CommonEngine"

    const-string v27, "Duplicated file name found"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6392
    invoke-virtual {v9, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 6393
    const-string v26, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6394
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_4

    .line 6395
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 6398
    :goto_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "filenumber":I
    .local v17, "filenumber":I
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 6399
    move-object/from16 v24, v21

    .line 6400
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 6401
    const-string v26, "CommonEngine"

    const-string v27, "New file name created"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6402
    new-instance v14, Ljava/io/File;

    .end local v14    # "f":Ljava/io/File;
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v14    # "f":Ljava/io/File;
    move/from16 v16, v17

    .end local v17    # "filenumber":I
    .restart local v16    # "filenumber":I
    goto/16 :goto_3

    .line 6362
    .end local v8    # "currentAddress":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v13    # "extension":Ljava/lang/String;
    .end local v14    # "f":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "filenumber":I
    .end local v18    # "filepart":Ljava/lang/String;
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v24    # "title":Ljava/lang/String;
    :cond_2
    const-string v13, ".3gp"

    .line 6363
    .restart local v13    # "extension":Ljava/lang/String;
    const-string v20, "video/3gpp"

    .restart local v20    # "mimeType":Ljava/lang/String;
    goto/16 :goto_1

    .line 6381
    .restart local v8    # "currentAddress":Ljava/lang/String;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v18    # "filepart":Ljava/lang/String;
    :cond_3
    move-object/from16 v21, v18

    .restart local v21    # "name":Ljava/lang/String;
    goto/16 :goto_2

    .line 6397
    .restart local v12    # "displayName":Ljava/lang/String;
    .restart local v14    # "f":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v16    # "filenumber":I
    .restart local v24    # "title":Ljava/lang/String;
    :cond_4
    move-object/from16 v21, v18

    goto :goto_4

    .line 6405
    :cond_5
    new-instance v25, Landroid/content/ContentValues;

    const/16 v26, 0xa

    invoke-direct/range {v25 .. v26}, Landroid/content/ContentValues;-><init>(I)V

    .line 6407
    .local v25, "values":Landroid/content/ContentValues;
    const-string v26, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6408
    const-string v26, "_display_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6409
    const-string v26, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6410
    const-string v26, "mime_type"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6411
    const-string v26, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6414
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v19

    .line 6415
    .local v19, "location":Landroid/location/Location;
    if-eqz v19, :cond_6

    .line 6417
    const-string v26, "CommonEngine"

    const-string v27, "Insert contextual tag"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6419
    const-string v5, "weather_ID"

    .line 6420
    .local v5, "WEATHER_ID":Ljava/lang/String;
    const-string v4, "city_ID"

    .line 6422
    .local v4, "CITY_ID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6425
    const-string v26, "latitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 6426
    const-string v26, "longitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 6430
    .end local v4    # "CITY_ID":Ljava/lang/String;
    .end local v5    # "WEATHER_ID":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 6431
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 6433
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto/16 :goto_0
.end method

.method private dumpCamcorderInnerProfile()V
    .locals 3

    .prologue
    .line 7284
    const-string v0, "CommonEngine"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7286
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7287
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7288
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7289
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7290
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7291
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7293
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7294
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7295
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    return-void
.end method

.method private dumpCamcorderProfile()V
    .locals 3

    .prologue
    .line 7299
    const-string v0, "CommonEngine"

    const-string v1, "[Dump] camcorder profile"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7300
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7301
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7302
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7303
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7306
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7311
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7312
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7313
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7314
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7315
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7316
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7317
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7318
    return-void
.end method

.method private getAudioBitRateFromProfile()I
    .locals 1

    .prologue
    .line 7322
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    return v0
.end method

.method private getCurrentStateId()I
    .locals 1

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    return v0
.end method

.method private getFileFormatFromProfile()I
    .locals 1

    .prologue
    .line 7363
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    return v0
.end method

.method private getGolfShotFileString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8990
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 8991
    const-string v0, ""

    .line 8992
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getHDRFileName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 5913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5914
    .local v2, "dateTaken":J
    iput-wide v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTaken:J

    .line 5916
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5918
    .local v0, "currentAddress":Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5920
    iput-wide v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTakenForHDR:J

    .line 5921
    invoke-static {v2, v3, v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    .line 5929
    .end local v1    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 5923
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 5925
    iget-wide v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTakenForHDR:J

    const-string v5, "Richtone(HDR)"

    invoke-static {v6, v7, v0, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    move-object v4, v1

    .line 5926
    .end local v1    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 5928
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {v2, v3, v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    move-object v4, v1

    .line 5929
    .end local v1    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7385
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7386
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CINEPIC_MODE_BUCKET:Ljava/lang/String;

    .line 7393
    .local v0, "cameraDirPath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7387
    .end local v0    # "cameraDirPath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7388
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->getCoverModeImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cameraDirPath":Ljava/lang/String;
    goto :goto_0

    .line 7390
    .end local v0    # "cameraDirPath":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cameraDirPath":Ljava/lang/String;
    goto :goto_0
.end method

.method private getVideoBitRateFromProfile()I
    .locals 1

    .prologue
    .line 7398
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    return v0
.end method

.method private initializeRecorder()V
    .locals 12

    .prologue
    .line 7427
    const-string v8, "CommonEngine"

    const-string v9, "initializeRecorder"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7429
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_0

    .line 7541
    :goto_0
    return-void

    .line 7432
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->readVideoPreferences()V

    .line 7434
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 7435
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 7437
    .local v3, "myExtras":Landroid/os/Bundle;
    const-wide/16 v4, 0x0

    .line 7439
    .local v4, "requestedSizeLimit":J
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    .line 7440
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 7441
    .local v7, "saveUri":Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 7442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeVideoFileDescriptor()V

    .line 7444
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 7445
    iput-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 7446
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCameraVideoFileDescriptor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7452
    :cond_1
    :goto_1
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7453
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestedSizeLimit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7456
    .end local v7    # "saveUri":Landroid/net/Uri;
    :cond_2
    new-instance v8, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 7458
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v8

    if-nez v8, :cond_3

    .line 7459
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera;->unlock()V

    .line 7460
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCamera(Lcom/sec/android/seccamera/SecCamera;)V

    .line 7463
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 7464
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 7467
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->setRecorderUsingInnerProfile()V

    .line 7472
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 7474
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v8

    const-wide/32 v10, 0x2080000

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7475
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    iget-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    .line 7476
    iput-wide v4, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7479
    :cond_4
    iget-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 7480
    const-wide v8, 0xffffffffL

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7483
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 7484
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_b

    if-eqz v3, :cond_b

    .line 7485
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7492
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 7493
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_7

    const-wide/32 v8, 0x3200000

    cmp-long v8, v4, v8

    if-lez v8, :cond_8

    .line 7494
    :cond_7
    const-wide/32 v8, 0x3200000

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7497
    :cond_8
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxFileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7500
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-wide v10, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7507
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 7508
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v6

    .line 7510
    .local v6, "rotation":I
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAuthor(I)V

    .line 7512
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMediaRecorder.setOrientationHint("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7513
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_9

    .line 7514
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOrientationHint(I)V

    .line 7524
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_a

    .line 7526
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7540
    :cond_a
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_0

    .line 7447
    .end local v6    # "rotation":I
    .restart local v7    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 7449
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "CommonEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7487
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .end local v7    # "saveUri":Landroid/net/Uri;
    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getMaxRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7488
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-wide v10, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    goto/16 :goto_2

    .line 7501
    :catch_1
    move-exception v0

    .line 7502
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7503
    const-string v8, "CommonEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7504
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    goto/16 :goto_3

    .line 7527
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "rotation":I
    :catch_2
    move-exception v0

    .line 7529
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "CommonEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7530
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 7532
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    .line 7533
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 7534
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    .line 7537
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v9, -0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private isAutoExposureLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 3843
    const-string v0, "true"

    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p1, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAutoWhiteBalanceLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 3839
    const-string v0, "true"

    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p1, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadInnerProfile()V
    .locals 3

    .prologue
    .line 7732
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v0

    .line 7735
    .local v0, "videoQuality":I
    new-instance v1, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 7736
    return-void
.end method

.method private makeVideoFileSlow()V
    .locals 10

    .prologue
    .line 7593
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionFactor()I

    move-result v6

    .line 7594
    .local v6, "slowFactor":I
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The slowmode will be processed with speed type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7596
    .local v4, "lapTimeStart":J
    new-instance v1, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;

    invoke-direct {v1}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;-><init>()V

    .line 7599
    .local v1, "maker":Lcom/sec/android/app/camera/Mp4SlowMotionMaker;
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v7

    int-to-double v8, v6

    invoke-virtual {v1, v7, v8, v9}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->makeMp4Slow(Ljava/lang/String;D)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7605
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 7606
    .local v2, "lapTime":J
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Slow mode processing time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7607
    return-void

    .line 7600
    .end local v2    # "lapTime":J
    :catch_0
    move-exception v0

    .line 7601
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private openCameraDevice()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3257
    const-string v2, "CommonEngine"

    const-string v3, "opening camera device..."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW Open**StartU["

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

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    const/4 v0, 0x0

    .line 3292
    .local v0, "cameraId":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 3293
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera - cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->initializeCameraMode(I)V

    .line 3296
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 3298
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->setBroadcastCameraStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3317
    :cond_0
    iput v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 3318
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_5

    .line 3319
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorCallback:Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 3320
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCallback:Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 3321
    const-string v2, "CommonEngine"

    const-string v3, "camera device is opened."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 3325
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v2, :cond_4

    .line 3326
    const-string v2, "CommonEngine"

    const-string v3, "CameraParameters is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 3347
    :cond_1
    :goto_0
    return-void

    .line 3299
    :catch_0
    move-exception v1

    .line 3301
    .local v1, "e":Ljava/lang/Exception;
    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 3302
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    if-gez v2, :cond_2

    .line 3303
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service cannot connect. retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->openCameraDevice()V

    .line 3306
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_1

    .line 3308
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    if-ltz v2, :cond_3

    .line 3309
    const-string v2, "CommonEngine"

    const-string v3, "service cannot connect. critical exception occured."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    iput v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 3311
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3313
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    if-gez v2, :cond_0

    goto :goto_0

    .line 3336
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3337
    const/16 v2, 0x5a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setCoverModeDisplayOrientation(I)V

    .line 3342
    :goto_1
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->setExternalFilter(Z)V

    .line 3346
    :cond_5
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW Open**EndU["

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

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3339
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setCameraDisplayOrientation()V

    goto :goto_1
.end method

.method private readVideoPreferences()V
    .locals 6

    .prologue
    const v5, 0x493e0

    const/4 v4, 0x0

    .line 7677
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7685
    .local v0, "intent":Landroid/content/Intent;
    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7686
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7687
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 7688
    .local v2, "seconds":I
    mul-int/lit16 v3, v2, 0x3e8

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7728
    .end local v2    # "seconds":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->loadInnerProfile()V

    .line 7729
    return-void

    .line 7690
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v3

    mul-int/lit16 v1, v3, 0x3e8

    .line 7691
    .local v1, "nRemainTime":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 7692
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 7693
    iput v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7723
    :cond_2
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    if-le v3, v1, :cond_0

    .line 7724
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMaxVideoDurationInMs("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") > nRemainTime("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7725
    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto :goto_0

    .line 7695
    :cond_3
    const v3, 0x927c0

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 7697
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_5

    .line 7698
    iput v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7700
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->dropCache()V

    goto :goto_1

    .line 7701
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7702
    const/16 v3, 0x1388

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 7706
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderVideoDurationInMS()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7707
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7708
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 7710
    :pswitch_0
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 7713
    :pswitch_1
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 7716
    :pswitch_2
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 7708
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerVideo()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0c0184

    const/4 v10, 0x0

    .line 7739
    const-string v5, "CommonEngine"

    const-string v6, "registerVideo"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7741
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_4

    .line 7742
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 7743
    const-string v5, "CommonEngine"

    const-string v6, "mCurrentVideoFilename NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7810
    :goto_0
    return-void

    .line 7747
    :cond_0
    const-string v5, "content://media/external/video/media"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7748
    .local v4, "videoTable":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_size"

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7750
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 7751
    .local v2, "resolutionId":I
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7752
    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 7755
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 7756
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "resolution"

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mDualRecordingResolution:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7762
    :goto_1
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 7763
    .local v1, "metadataRetriver":Landroid/media/MediaMetadataRetriever;
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 7764
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7765
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7773
    .end local v1    # "metadataRetriver":Landroid/media/MediaMetadataRetriever;
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7774
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 7809
    .end local v2    # "resolutionId":I
    .end local v4    # "videoTable":Landroid/net/Uri;
    :goto_3
    iput-object v12, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    .line 7758
    .restart local v2    # "resolutionId":I
    .restart local v4    # "videoTable":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "resolution"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7766
    :catch_0
    move-exception v0

    .line 7767
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "CommonEngine"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7768
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    iget-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 7776
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 7778
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 7780
    :catch_1
    move-exception v3

    .line 7781
    .local v3, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CommonEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7782
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5, v11, v10}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 7783
    .end local v3    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    .line 7784
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v5, "CommonEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7785
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7786
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto :goto_3

    .line 7787
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    .line 7788
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "CommonEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7789
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7790
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto :goto_3

    .line 7791
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 7792
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "CommonEngine"

    const-string v6, "IllegalArgumentException : insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7793
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7794
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto/16 :goto_3

    .line 7799
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "resolutionId":I
    .end local v4    # "videoTable":Landroid/net/Uri;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_3

    .line 7800
    :catch_5
    move-exception v3

    .line 7801
    .restart local v3    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CommonEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7802
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5, v11, v10}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 7803
    .end local v3    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_6
    move-exception v0

    .line 7804
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v5, "CommonEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7805
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7806
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto/16 :goto_3
.end method

.method private renameTempFile()V
    .locals 5

    .prologue
    .line 7833
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7835
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7836
    .local v2, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7837
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 7838
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 7839
    const-string v3, "CommonEngine"

    const-string v4, "Failed to rename temp file."

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7842
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "result":Z
    .end local v2    # "src":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private setFDOrientation(II)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 4069
    const/4 v0, 0x0

    .line 4071
    .local v0, "mOrientation":I
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v0, v1, 0x4

    .line 4074
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 4076
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/seccamera/SecCamera;->setThemeOrientationInfo(II)V

    .line 4078
    :cond_0
    return-void
.end method

.method private setLastOrientation(I)V
    .locals 0
    .param p1, "lastOrientation"    # I

    .prologue
    .line 4006
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    .line 4007
    return-void
.end method

.method private setRecorderUsingInnerProfile()V
    .locals 11

    .prologue
    const/16 v10, 0x2d0

    const/16 v9, 0x280

    const/16 v8, 0x1e0

    const/16 v7, 0x438

    const/4 v6, 0x1

    .line 8189
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 8190
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 8191
    const-string v1, "CommonEngine"

    const-string v2, "setAudioSource: SEC_CAMCORDER"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8192
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 8201
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    .line 8202
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 8203
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 8204
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setWeather(I)V

    .line 8205
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCityId(J)V

    .line 8209
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8211
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 8216
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8217
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 8221
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 8223
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8224
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v3, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->getTimeLapseFps(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCaptureRate(D)V

    .line 8228
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 8229
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0xf00

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x870

    if-ne v1, v2, :cond_9

    .line 8230
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x177000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8263
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_14

    .line 8264
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 8275
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v6, :cond_15

    .line 8276
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 8277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mDualRecordingResolution:Ljava/lang/String;

    .line 8282
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 8283
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v3, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 8288
    :goto_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 8289
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 8290
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 8291
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 8292
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 8303
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 8304
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 8305
    :cond_5
    return-void

    .line 8195
    .end local v0    # "loc":Landroid/location/Location;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    goto/16 :goto_0

    .line 8213
    .restart local v0    # "loc":Landroid/location/Location;
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    goto/16 :goto_1

    .line 8219
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_2

    .line 8231
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v7, :cond_a

    .line 8232
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0xaf000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8256
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 8233
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v7, :cond_b

    .line 8234
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x96000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8235
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v7, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v7, :cond_c

    .line 8236
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x8e800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8237
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v10, :cond_d

    .line 8238
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x7d000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8239
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v10, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v8, :cond_e

    .line 8240
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8241
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v9, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v8, :cond_f

    .line 8242
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8243
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v9, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x168

    if-ne v1, v2, :cond_10

    .line 8244
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8245
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_11

    .line 8246
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x7800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8247
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_13

    .line 8248
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8249
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x1800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8251
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x3000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8253
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x1c2

    if-ne v1, v2, :cond_4

    .line 8254
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 8266
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->createVideoPath()V

    .line 8267
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8279
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5

    .line 8285
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v3, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    goto/16 :goto_6
.end method

.method private setRecorderUsingProfile()V
    .locals 11

    .prologue
    const/16 v10, 0x2d0

    const/16 v9, 0x280

    const/16 v8, 0x1e0

    const/16 v7, 0x438

    const/4 v6, 0x1

    .line 8309
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 8310
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 8313
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    .line 8314
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 8315
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 8316
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setWeather(I)V

    .line 8317
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCityId(J)V

    .line 8321
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8323
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 8328
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8329
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 8334
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 8336
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8337
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->getTimeLapseFps(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCaptureRate(D)V

    .line 8341
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 8342
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v7, :cond_8

    .line 8343
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0xaf000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8374
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_12

    .line 8375
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 8385
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 8386
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 8387
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 8394
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 8399
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 8400
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 8401
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 8402
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 8405
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 8406
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 8409
    :cond_5
    return-void

    .line 8325
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    goto/16 :goto_0

    .line 8331
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_1

    .line 8344
    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v7, :cond_9

    .line 8345
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x96000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8367
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 8346
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v7, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v7, :cond_a

    .line 8347
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x8e800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8348
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v10, :cond_b

    .line 8349
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x7d000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8350
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v10, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v8, :cond_c

    .line 8351
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8352
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v9, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v8, :cond_d

    .line 8353
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8354
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v9, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x168

    if-ne v1, v2, :cond_e

    .line 8355
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8356
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_f

    .line 8357
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x7800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8358
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_11

    .line 8359
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8360
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x1800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8362
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x3000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8364
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x1c2

    if-ne v1, v2, :cond_4

    .line 8365
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 8377
    :cond_12
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->createVideoPath()V

    .line 8378
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8389
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    goto/16 :goto_4
.end method

.method private setSystemSoundEffect()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4081
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->isSystemSoundEffectEnabled:Z

    .line 4083
    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    .prologue
    .line 6248
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 6263
    :cond_0
    :goto_0
    return-void

    .line 6250
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 6258
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6260
    :catch_0
    move-exception v0

    .line 6261
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CommonEngine"

    const-string v2, "startFaceDetection failed. It seems to be started already."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public DualModeAsyncCaptureReset()V
    .locals 1

    .prologue
    .line 6022
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6023
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->DualModeAsyncCaptureReset()V

    .line 6025
    :cond_0
    return-void
.end method

.method public SoundShotAddSoundCompleted()V
    .locals 6

    .prologue
    .line 8850
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    if-eqz v1, :cond_0

    .line 8851
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 8854
    :cond_0
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB update : mLastCapturedFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8855
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 8857
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 8858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8859
    .local v0, "action":Landroid/content/Intent;
    const-string v1, "Path"

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8860
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 8862
    .end local v0    # "action":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public autoFocusCompleted()V
    .locals 1

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onAutoFocusCompleted()V

    .line 4143
    return-void
.end method

.method public burstShotStartCompleted()V
    .locals 2

    .prologue
    .line 6240
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6241
    return-void
.end method

.method public burstShotStopCompleted()V
    .locals 2

    .prologue
    .line 6244
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6245
    return-void
.end method

.method protected calculateOrientationForPicture(I)I
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/16 v5, 0x2c

    const/4 v4, 0x1

    .line 5511
    const/4 v2, 0x0

    .line 5512
    .local v2, "rotation":I
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    .line 5515
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 5516
    .local v0, "id":I
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 5517
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 5523
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v1

    .line 5527
    .local v1, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    if-eqz v1, :cond_2

    .line 5529
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v3, v4, :cond_6

    .line 5530
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 5534
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x168

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v2, v3, 0x168

    .line 5545
    .end local v0    # "id":I
    .end local v1    # "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_2
    :goto_1
    return v2

    .line 5518
    .restart local v0    # "id":I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v5, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 5519
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    goto :goto_0

    .line 5520
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 5521
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    goto :goto_0

    .line 5537
    .restart local v1    # "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_5
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    goto :goto_1

    .line 5540
    :cond_6
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v3, p1

    rem-int/lit16 v2, v3, 0x168

    goto :goto_1
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 833
    const-string v0, "CommonEngine"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 835
    const-string v0, "CommonEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$2;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 874
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    .line 875
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    goto :goto_0
.end method

.method public cancelCaptureForDrama()V
    .locals 2

    .prologue
    .line 5567
    const-string v0, "CommonEngine"

    const-string v1, "cancelCaptureForDrama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->cancelCaptureForDrama()V

    .line 5569
    return-void
.end method

.method public cancelCaptureForPanorama()V
    .locals 2

    .prologue
    .line 5549
    const-string v0, "CommonEngine"

    const-string v1, "cancelCaptureForPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForPanoramaStartThreadComplete()V

    .line 5551
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5552
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5553
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 5558
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->cancelCaptureForPanorama()V

    .line 5559
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 5560
    return-void

    .line 5556
    :cond_1
    const-string v0, "CommonEngine"

    const-string v1, "cancelCaptureForPanorama: CE_START_PANORAMA_COMPLETED is exist"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelFocusing()V
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 880
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 5563
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->cancelSeriesActionShot()V

    .line 5564
    return-void
.end method

.method public captureBurstShot()V
    .locals 3

    .prologue
    .line 5572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5574
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstDuration(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->captureBurstShot(I)V

    .line 5575
    return-void
.end method

.method public changeEngineState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 887
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 893
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEngineState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkDramaDumpDir()V
    .locals 4

    .prologue
    .line 8734
    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->DRAMA_MODE_BUCKET:Ljava/lang/String;

    .line 8735
    .local v1, "cameraDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8736
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8737
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8738
    const-string v2, "CommonEngine"

    const-string v3, "drama dump directory is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8742
    :cond_0
    return-void
.end method

.method public checkDualShotDumpDir()V
    .locals 4

    .prologue
    .line 8745
    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->DUALSHOT_MODE_BUCKET:Ljava/lang/String;

    .line 8747
    .local v1, "cameraDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8748
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8749
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8750
    const-string v2, "CommonEngine"

    const-string v3, "drama dump directory is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8754
    :cond_0
    return-void
.end method

.method public checkFocusMode(I)I
    .locals 1
    .param p1, "focusMode"    # I

    .prologue
    .line 897
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 898
    :cond_0
    const/4 p1, 0x5

    .line 902
    :cond_1
    :goto_0
    return p1

    .line 899
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 900
    const/4 p1, 0x6

    goto :goto_0
.end method

.method public checkSaveDirectory()V
    .locals 3

    .prologue
    .line 8726
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 8727
    .local v1, "saveDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8728
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8729
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8731
    :cond_0
    return-void
.end method

.method public chkActionShotStarted()Z
    .locals 1

    .prologue
    .line 5578
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->chkActionShotStarted()Z

    move-result v0

    return v0
.end method

.method public clearCaptureImageData()V
    .locals 1

    .prologue
    .line 5582
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v0, :cond_0

    .line 5583
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 5584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5586
    :cond_0
    return-void
.end method

.method public clearFocusState()V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 924
    return-void
.end method

.method public clearLastContentUri()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 928
    return-void
.end method

.method public clearRequest()V
    .locals 3

    .prologue
    .line 931
    const-string v1, "CommonEngine"

    const-string v2, "clearRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;->removeMessages(I)V

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 938
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 939
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 940
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 941
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 942
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 943
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 944
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 945
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 947
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 949
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->clear()V

    .line 950
    return-void
.end method

.method public clearTimer()V
    .locals 3

    .prologue
    .line 953
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;->removeMessages(I)V

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 957
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 958
    return-void
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "CommonEngine"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->release()V

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 968
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 969
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 973
    :cond_0
    return-void
.end method

.method public closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 6305
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 6307
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6311
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 6313
    :cond_0
    return-void

    .line 6308
    :catch_0
    move-exception v0

    .line 6309
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CommonEngine"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public coordinateSyncforDual(FFFF)V
    .locals 6
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 8548
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 8549
    return-void
.end method

.method public coordinateSyncforDual(FFFFZ)V
    .locals 9
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "newEffect"    # Z

    .prologue
    const/16 v8, 0x30

    const/4 v7, 0x0

    .line 8552
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_2

    .line 8553
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinateSyncforDual "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8554
    add-float v2, p1, p3

    .line 8555
    .local v2, "bottomRightX":F
    add-float v3, p2, p4

    .line 8556
    .local v3, "bottomRightY":F
    float-to-int v4, p2

    shl-int/lit8 v4, v4, 0xf

    float-to-int v5, p1

    and-int/lit16 v5, v5, 0x7fff

    or-int v0, v4, v5

    .line 8557
    .local v0, "arg1":I
    float-to-int v4, v3

    shl-int/lit8 v4, v4, 0xf

    float-to-int v5, v2

    and-int/lit16 v5, v5, 0x7fff

    or-int v1, v4, v5

    .line 8558
    .local v1, "arg2":I
    if-eqz p5, :cond_0

    .line 8559
    const/high16 v4, -0x80000000

    or-int/2addr v0, v4

    .line 8562
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 8564
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p1

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getDualPreviewOffsetForFullPreview()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectPosX(I)V

    .line 8565
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectPosX(I)V

    .line 8566
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p2

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectPosY(I)V

    .line 8567
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p3

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectWidth(I)V

    .line 8568
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectHeight(I)V

    .line 8577
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_2

    .line 8578
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setEffectCoordinate(II)V

    .line 8581
    .end local v0    # "arg1":I
    .end local v1    # "arg2":I
    .end local v2    # "bottomRightX":F
    .end local v3    # "bottomRightY":F
    :cond_2
    return-void

    .line 8569
    .restart local v0    # "arg1":I
    .restart local v1    # "arg2":I
    .restart local v2    # "bottomRightX":F
    .restart local v3    # "bottomRightY":F
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 8571
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectPosX(I)V

    .line 8572
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectPosY(I)V

    .line 8573
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectWidth(I)V

    .line 8574
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectHeight(I)V

    goto :goto_0
.end method

.method public countForCurrenPictureSaving()I
    .locals 1

    .prologue
    .line 5589
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method public createCaptureData(Landroid/content/Intent;)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 5593
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getPreviewNormalWidth()I

    move-result v1

    .line 5594
    .local v1, "PREVIEW_NORMAL_WIDTH":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getPreviewNormalHeight()I

    move-result v0

    .line 5595
    .local v0, "PREVIEW_NORMAL_HEIGHT":I
    if-eqz p1, :cond_1

    .line 5596
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v3, :cond_0

    .line 5597
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 5598
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5600
    :cond_0
    new-instance v3, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v3}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5601
    const-string v3, "inline-data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 5602
    .local v2, "mdata":[B
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v5, v1, v0

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V

    .line 5607
    .end local v2    # "mdata":[B
    :cond_1
    return-void
.end method

.method public createVideoPathDir()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6316
    const-string v2, "CommonEngine"

    const-string v3, "createVideoPathDir()"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6317
    const/4 v1, 0x0

    .line 6319
    .local v1, "videoPathDir":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6320
    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CINEPIC_MODE_BUCKET:Ljava/lang/String;

    .line 6328
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6329
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6330
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6331
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 6332
    const-string v2, "CommonEngine"

    const-string v3, "directory is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6333
    const/4 v1, 0x0

    .line 6336
    .end local v1    # "videoPathDir":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 6321
    .end local v0    # "cameraDir":Ljava/io/File;
    .restart local v1    # "videoPathDir":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6322
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getCoverModeImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6325
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public disablePreviewCallbackManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8701
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 8702
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->getPreviewCallbackFormat()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8703
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/CommonEngine;->setUsePreviewCallback(ZI)V

    .line 8704
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8705
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->clearPreviewBuffer()V

    .line 8707
    :cond_1
    return-void
.end method

.method public disableSystemSoundEffect()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2461
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2462
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2465
    return-void
.end method

.method public doAutoFocusAsync()V
    .locals 4

    .prologue
    .line 976
    const-string v0, "CommonEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**StartU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 982
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 990
    :cond_2
    return-void
.end method

.method public doAutoNightSync()V
    .locals 3

    .prologue
    .line 5814
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5815
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAutoShotNight(Z)V

    .line 5816
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotStarted()V

    .line 5817
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startMultiFrameShot()V

    .line 5818
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_SOUND:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 5820
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startBlinkShutterAnimation()V

    .line 5822
    :cond_0
    return-void
.end method

.method public doCamcorderRecordingStartSound()V
    .locals 3

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3648
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3650
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3655
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_START:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 3657
    :cond_2
    return-void

    .line 3651
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doCamcorderRecordingStopSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3666
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->disableShutterSoundDuringCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3667
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_STOP:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 3670
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 3673
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3674
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 3675
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetOnShutterSound(I)V

    .line 3683
    :cond_2
    return-void
.end method

.method public doCancelDramaShot()V
    .locals 2

    .prologue
    .line 5785
    const-string v0, "CommonEngine"

    const-string v1, "doCancelDramaShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5786
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 5787
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelDramaShot()V

    .line 5789
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDramaShotCapturingCancel()V

    .line 5790
    return-void
.end method

.method public final doCancelShutterTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 993
    const-string v0, "CommonEngine"

    const-string v1, "doCancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->clearTimer()V

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1003
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1005
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1006
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1012
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->cancelAutoFocus()V

    .line 1016
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->clearFocusState()V

    .line 1017
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getTouchtoCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchtoCaptureStarted(Z)V

    .line 1022
    :cond_2
    return-void
.end method

.method public doCancelVideoRecordingSync()V
    .locals 11

    .prologue
    const/16 v10, 0x1a

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 6446
    const-string v5, "CommonEngine"

    const-string v6, "doCancelVideoRecordingSync"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6448
    const-string v5, "CommonEngine"

    const-string v6, "Cancelling VideoRecording..."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v5, :cond_0

    .line 6451
    const-string v5, "CommonEngine"

    const-string v6, "mActivityContext is null"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6534
    :goto_0
    return-void

    .line 6455
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v5, :cond_9

    .line 6457
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 6458
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6459
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6469
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6474
    :goto_1
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 6475
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 6480
    :cond_2
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6482
    .local v2, "ioBusyUnVoteIntent":Landroid/content/Intent;
    const-string v5, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6483
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6485
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6486
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6487
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getSystemSoundEffect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->enableSystemSoundEffect()V

    .line 6498
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    .line 6500
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_5

    .line 6501
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6502
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 6504
    .local v3, "myExtras":Landroid/os/Bundle;
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 6505
    const-string v5, "output"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 6508
    .local v4, "saveUri":Landroid/net/Uri;
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/net/URI;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6513
    .end local v4    # "saveUri":Landroid/net/Uri;
    :cond_4
    :goto_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 6517
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "myExtras":Landroid/os/Bundle;
    :cond_5
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 6519
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 6520
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 6521
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 6522
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isRecordingMenuTop()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6523
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 6526
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_8

    .line 6527
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6528
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v10, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6529
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6530
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v9, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6532
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/Camera;->setTouchtoCaptureStarted(Z)V

    .line 6533
    const-string v5, "CommonEngine"

    const-string v6, "Cancelling VideoRecording is completed!"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6470
    .end local v2    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 6471
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancel fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6476
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_9
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_2

    .line 6477
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_2

    .line 6509
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    .restart local v3    # "myExtras":Landroid/os/Bundle;
    .restart local v4    # "saveUri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method public doChangeParameterSync(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 1025
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 1026
    return-void
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 12
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x3a98

    const/4 v6, 0x0

    const/16 v9, 0x7530

    const/4 v5, 0x1

    .line 1029
    const-string v4, "CommonEngine"

    const-string v7, "doChangeParameterSync"

    invoke-static {v4, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v4, :cond_1

    .line 1032
    const-string v4, "CommonEngine"

    const-string v5, "returning because mCameraDevice is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v4, :cond_2

    .line 1037
    const-string v4, "CommonEngine"

    const-string v5, "mParameters is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 1041
    check-cast v2, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    .line 1042
    .local v2, "p":Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;
    const/4 v0, 0x0

    .line 1044
    .local v0, "fpsRange":[I
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1336
    :cond_3
    :goto_1
    :sswitch_0
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v4

    const/16 v7, 0x65

    if-ne v4, v7, :cond_4

    .line 1337
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/16 v7, 0xe

    invoke-static {v4, v7}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v4

    if-ltz v4, :cond_30

    .line 1339
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v6, 0xb

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1350
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_5

    .line 1351
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v6}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1357
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1358
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_32

    .line 1359
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    goto :goto_0

    .line 1048
    :sswitch_1
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/16 v7, 0x1f

    if-eq v4, v7, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/16 v7, 0x30

    if-ne v4, v7, :cond_8

    .line 1049
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v9, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1144
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeValueForISPset(I)I

    move-result v3

    .line 1145
    .local v3, "shotmode":I
    const-string v4, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shot mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1050
    .end local v3    # "shotmode":I
    :cond_8
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-ne v4, v11, :cond_9

    .line 1051
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v10, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_4

    .line 1052
    :cond_9
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/16 v7, 0x1c

    if-ne v4, v7, :cond_a

    .line 1053
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const v7, 0x1d4c0

    const v8, 0x1d4c0

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1054
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "800x450"

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    const-string v8, "800x450"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    goto :goto_4

    .line 1056
    :cond_a
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/16 v7, 0x27

    if-ne v4, v7, :cond_c

    .line 1057
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1058
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x1b58

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1060
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0xfa0

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1062
    :cond_c
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/16 v7, 0x17

    if-ne v4, v7, :cond_e

    .line 1063
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1064
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x2710

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1066
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1068
    :cond_e
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-nez v4, :cond_15

    .line 1069
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-ne v4, v5, :cond_f

    .line 1070
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    const/16 v8, 0x5dc0

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1071
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1076
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    invoke-virtual {v4, v10, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1086
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1088
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v4

    if-ne v4, v5, :cond_12

    .line 1089
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1093
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0xfa0

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1096
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1097
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1090
    :cond_11
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1091
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x1b58

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_5

    .line 1100
    :cond_12
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1101
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1106
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1107
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1119
    :goto_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1120
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1103
    :cond_13
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1109
    :cond_14
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_7

    .line 1126
    :cond_15
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1127
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1139
    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1140
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1129
    :cond_16
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_8

    .line 1149
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v7, 0x2a

    if-ne v4, v7, :cond_17

    .line 1150
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1152
    :cond_17
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1156
    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v7, 0x26

    if-ne v4, v7, :cond_18

    .line 1157
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1159
    :cond_18
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1173
    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-eqz v4, :cond_19

    .line 1174
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1176
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-ne v4, v5, :cond_1a

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v4

    if-ne v4, v5, :cond_1a

    .line 1177
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1178
    :cond_1a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 1179
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1181
    :cond_1c
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1185
    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_1d

    .line 1186
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v4, v7}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1188
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-eq v4, v5, :cond_20

    .line 1189
    :cond_1e
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_1f

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1190
    :cond_1f
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_20
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_21

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_21

    .line 1198
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1199
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 1201
    :cond_21
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    .line 1202
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 1203
    :cond_22
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    if-eqz v4, :cond_23

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceZoom()V

    .line 1205
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 1212
    :sswitch_6
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_25

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_3

    .line 1214
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1215
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 1221
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-eq v4, v5, :cond_27

    .line 1222
    :cond_26
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 1229
    :sswitch_7
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_28

    .line 1230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_3

    .line 1231
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 1234
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 1238
    :sswitch_8
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1249
    :sswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1252
    :sswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1255
    :sswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1258
    :sswitch_c
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1264
    :sswitch_d
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1267
    :sswitch_e
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-eqz v4, :cond_29

    move v4, v5

    :goto_9
    invoke-virtual {v7, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 1268
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_2a

    .line 1269
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "sw-vdis"

    const-string v8, "on"

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    move v4, v6

    .line 1267
    goto :goto_9

    .line 1271
    :cond_2a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "sw-vdis"

    const-string v8, "off"

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1275
    :sswitch_f
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v7, 0x26

    if-eq v4, v7, :cond_3

    .line 1276
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1280
    :sswitch_10
    const-string v4, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doChangeParameterSync : MENUID_BURST_SETTINGS - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_1

    .line 1284
    :sswitch_11
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_2c

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1285
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1288
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0xfa0

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1291
    :goto_a
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1328
    :goto_b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeValueForISPset(I)I

    move-result v1

    .line 1329
    .local v1, "mAutoLLS":I
    const-string v4, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto Night Detection Shot mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1286
    .end local v1    # "mAutoLLS":I
    :cond_2b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x1b58

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_a

    .line 1293
    :cond_2c
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1294
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :cond_2d
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1297
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-ne v4, v5, :cond_2e

    .line 1298
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    const/16 v8, 0x5dc0

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_b

    .line 1299
    :cond_2e
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1304
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    invoke-virtual {v4, v10, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_b

    .line 1316
    :cond_2f
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_b

    .line 1341
    :cond_30
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0xb

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1354
    :cond_31
    const-string v4, "CommonEngine"

    const-string v6, "parameter will set next operation coming"

    invoke-static {v4, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1361
    :cond_32
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_0

    .line 1044
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x7 -> :sswitch_d
        0x8 -> :sswitch_0
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_d
        0x10 -> :sswitch_c
        0x12 -> :sswitch_d
        0x2f -> :sswitch_10
        0x55 -> :sswitch_6
        0x57 -> :sswitch_11
        0x59 -> :sswitch_7
        0x66 -> :sswitch_8
        0x6b -> :sswitch_e
        0x6c -> :sswitch_4
        0x6f -> :sswitch_f
    .end sparse-switch
.end method

.method public doDualShotBackModeSync()V
    .locals 2

    .prologue
    .line 7923
    const-string v0, "CommonEngine"

    const-string v1, "doDualShotBackModeSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7924
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 7925
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 7926
    return-void
.end method

.method public doDualShotModeSync()V
    .locals 3

    .prologue
    .line 7917
    const-string v0, "CommonEngine"

    const-string v1, "doDualShotModeSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7918
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForDualShot()V

    .line 7919
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v1, 0x1

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 7920
    return-void
.end method

.method public doEffectSync(I)V
    .locals 2
    .param p1, "modeid"    # I

    .prologue
    .line 8538
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8539
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8540
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->setDualEffectSync(I)V

    .line 8545
    :cond_0
    :goto_0
    return-void

    .line 8542
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->schedulesetSingleEffectSync(I)V

    goto :goto_0
.end method

.method public doHDRShotAllProgressCompleted()V
    .locals 2

    .prologue
    .line 1367
    const-string v0, "CommonEngine"

    const-string v1, "doHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1369
    return-void
.end method

.method public final doHideCoverCameraAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8054
    const-string v0, "CommonEngine"

    const-string v1, "doHideCoverCameraAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8055
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideCoverCamera()V

    .line 8057
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 8058
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 8059
    :cond_0
    return-void
.end method

.method public doPauseVideoRecordingSync()V
    .locals 3

    .prologue
    .line 6537
    const-string v1, "CommonEngine"

    const-string v2, "doPauseVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 6540
    const-string v1, "CommonEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    :goto_0
    return-void

    .line 6544
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 6545
    const-string v1, "CommonEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6549
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6550
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6551
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6555
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6562
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    goto :goto_0

    .line 6556
    :catch_0
    move-exception v0

    .line 6557
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CommonEngine"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6558
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    goto :goto_0
.end method

.method public final doPostInitSync()V
    .locals 2

    .prologue
    .line 6566
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6567
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V

    .line 6568
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V

    .line 6569
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V

    .line 6570
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V

    .line 6571
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V

    .line 6572
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnBurstShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;)V

    .line 6573
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnMultiFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;)V

    .line 6574
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnAutoLowLightDetectionListener(Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;)V

    .line 6575
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnDramaShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;)V

    .line 6576
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnDualEventListener(Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;)V

    .line 6577
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnGolfShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;)V

    .line 6578
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnBeautyShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;)V

    .line 6579
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnSecImagingEventListener(Lcom/sec/android/seccamera/SecCamera$OnSecImagingEventListener;)V

    .line 6581
    :cond_0
    return-void
.end method

.method public doPrepareVideoRecordingAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6584
    const-string v0, "CommonEngine"

    const-string v1, "doPrepareVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6587
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 6588
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLContext;->setPreviewTransparent(Z)V

    .line 6591
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 6592
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 6593
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6594
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback_VideoRecording()V

    .line 6596
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_2

    .line 6597
    const-string v0, "CommonEngine"

    const-string v1, "mMediaRecorder is already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 6598
    const-string v0, "CommonEngine"

    const-string v1, "Releasing mMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 6599
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 6603
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 6604
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6605
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6608
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6609
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFocusIndicator()V

    .line 6610
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 6611
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6612
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6613
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 6620
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_5

    .line 6621
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$7;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 6637
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6638
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6640
    :cond_5
    return-void

    .line 6615
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6616
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public doProcessBackSync()V
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1373
    return-void
.end method

.method public doResetSettingsSync()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1376
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStartreset(Z)V

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetButtonDim()V

    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraSettingsToDefault()V

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenResetSettings()V

    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShortcutLayoutReset()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetEditableShortcutLayout()V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStartreset(Z)V

    .line 1391
    return-void
.end method

.method public doResumeVideoRecordingSync()V
    .locals 3

    .prologue
    .line 6643
    const-string v1, "CommonEngine"

    const-string v2, "doResumeVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6645
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 6646
    const-string v1, "CommonEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6667
    :goto_0
    return-void

    .line 6650
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 6651
    const-string v1, "CommonEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6655
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6656
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6657
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6661
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6666
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->disableAlertSound()V

    goto :goto_0

    .line 6662
    :catch_0
    move-exception v0

    .line 6663
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CommonEngine"

    const-string v2, "Could not resume media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doSaveGolfShot()V
    .locals 2

    .prologue
    .line 5807
    const-string v0, "CommonEngine"

    const-string v1, "doSaveGolfShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5809
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 5810
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->saveGolfShot(I)V

    .line 5811
    :cond_0
    return-void
.end method

.method public doSetAllParamsSync()V
    .locals 0

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->initialize()V

    .line 1395
    return-void
.end method

.method public doSetEffectOrderForDualCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8036
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 8037
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setEffectLayerOrderSync(Z)V

    .line 8041
    :goto_0
    return-void

    .line 8039
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setEffectLayerOrderSync(Z)V

    goto :goto_0
.end method

.method public doSetEffectOrientationSync(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 8638
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8639
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetEffectOrientation(I)V

    .line 8645
    :cond_0
    :goto_0
    return-void

    .line 8641
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8642
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectOrientation(I)V

    goto :goto_0
.end method

.method public doSetMultipleParametersSync(Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 1408
    const-string v1, "CommonEngine"

    const-string v2, "doSetMultipleParametersSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1410
    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1411
    .local v0, "paramsToSet":Lcom/sec/android/seccamera/SecCamera$Parameters;
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1413
    .end local v0    # "paramsToSet":Lcom/sec/android/seccamera/SecCamera$Parameters;
    :cond_0
    return-void
.end method

.method public doSetOnShutterSound(I)V
    .locals 3
    .param p1, "shuttersound"    # I

    .prologue
    .line 6156
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnShutterSound. shuttersound ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6158
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 6159
    const-string v0, "CommonEngine"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6172
    :cond_0
    :goto_0
    return-void

    .line 6163
    :cond_1
    if-nez p1, :cond_2

    .line 6164
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0

    .line 6166
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6169
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0
.end method

.method public doSetParameterSync(Ljava/lang/Object;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 1398
    const-string v1, "CommonEngine"

    const-string v2, "doSetParameterSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1401
    check-cast v0, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;

    .line 1402
    .local v0, "p":Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1405
    .end local v0    # "p":Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;
    :cond_0
    return-void
.end method

.method public doSetSingleEffect()V
    .locals 2

    .prologue
    .line 7934
    const-string v0, "CommonEngine"

    const-string v1, "doSetSingleEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7935
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onEffectMenuSelect(I)V

    .line 7936
    return-void
.end method

.method public doSetSingleEffectSync(Ljava/lang/Object;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 7943
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    .line 7944
    .local v0, "p":Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 7945
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setSingleEffectSync(I)V

    .line 7946
    :cond_0
    return-void
.end method

.method public doSetTrackingVisibleSync()V
    .locals 2

    .prologue
    .line 7969
    const-string v0, "CommonEngine"

    const-string v1, "doSetTrackingVisibleSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7970
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 7971
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    if-eqz v0, :cond_0

    .line 7972
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setTrackingVisible()V

    .line 7973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    .line 7976
    :cond_0
    return-void
.end method

.method public final doShutterTimerAsync(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 1416
    const-string v1, "CommonEngine"

    const-string v2, "doShutterTimerAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 1420
    move v0, p1

    .line 1421
    .local v0, "i":I
    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1422
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerEventHandleMessage**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1421
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x4

    add-int/lit8 v3, p1, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1427
    return-void
.end method

.method public final doStartActionShotSync()V
    .locals 2

    .prologue
    .line 5610
    const-string v0, "CommonEngine"

    const-string v1, "doStartActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5612
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 5613
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startSeriesActionShot()V

    .line 5614
    return-void
.end method

.method public final doStartBurstAsync()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 8067
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStartBurstAsync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CeRequestQueue;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8068
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8069
    const-string v1, "CommonEngine"

    const-string v2, "duplicate schedule burst shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8070
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->burstShotStartCompleted()V

    .line 8129
    :goto_0
    return-void

    .line 8074
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 8076
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->dropCache()V

    .line 8077
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setSingleShotBurst(Z)V

    .line 8078
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->createBurstMenu()V

    .line 8079
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 8083
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 8084
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8085
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->setBurstCaptureShortPressed(Z)V

    .line 8086
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onBurstCaptureCancelled()V

    goto :goto_0

    .line 8091
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onBurstShotStarted()V

    .line 8092
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 8094
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8095
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setWeather(I)V

    .line 8096
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setCityId(J)V

    .line 8101
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isNeedInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8102
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8106
    .local v0, "mFilePath":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8107
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst shot filepath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8108
    if-eqz v0, :cond_5

    .line 8109
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "capture-burst-filepath"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8111
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 8112
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v6, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_8

    .line 8114
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 8121
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->captureBurstShot()V

    goto/16 :goto_0

    .line 8104
    .end local v0    # "mFilePath":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mFilePath":Ljava/lang/String;
    goto :goto_1

    .line 8115
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_a

    .line 8117
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v2

    invoke-virtual {v1, v4, v2, v5}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    goto :goto_2

    .line 8119
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    goto :goto_2
.end method

.method public final doStartDramaShotSync()V
    .locals 4

    .prologue
    .line 5745
    const-string v1, "CommonEngine"

    const-string v2, "doStartDramaShot"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    .line 5748
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getDramaShotState()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->DRAMA_SHOT_STATE_IDLE:I

    if-eq v1, v2, :cond_1

    .line 5749
    const-string v1, "CommonEngine"

    const-string v2, "doStartDramaShot - Current state is not DRAMA_SHOT_STATE_IDLE, return"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    :cond_0
    :goto_0
    return-void

    .line 5753
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "Camera_dramaShot"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 5756
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->DRAMA_MODE_BUCKET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5764
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5765
    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;

    const-string v2, "drama-file-path"

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetParameterSync(Ljava/lang/Object;)V

    .line 5767
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5768
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_3

    .line 5769
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startDramaShot()V

    .line 5771
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 5772
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onDramaShotStarted()V

    goto :goto_0
.end method

.method public doStartDualCameraLiteSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onDualModeSelected(I)V

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/16 v1, 0x2c

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2379
    return-void
.end method

.method public doStartDualCameraSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2386
    const-string v0, "CommonEngine"

    const-string v1, "doStartDualCameraSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 2388
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 2399
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrderForDualCamera()V

    .line 2400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    .line 2401
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateSettingsWhenSwitchCamera()V

    .line 2402
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenSwitchCamera()V

    .line 2403
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->checkFlashRestriction()V

    .line 2405
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2406
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 2417
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDualSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDualModeAsyncCaptureInit()V

    .line 2420
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setModeChange(Z)V

    .line 2427
    return-void

    .line 2391
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    goto :goto_0

    .line 2393
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    goto :goto_0

    .line 2396
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    goto :goto_0

    .line 2408
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1
.end method

.method public doStartDualEngineSync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7979
    const-string v0, "CommonEngine"

    const-string v1, "doStartDualEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7980
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 7981
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setEffectMenuSelect(Z)V

    .line 7982
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setDualEffectSync(I)V

    .line 7984
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    .line 7985
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    .line 7989
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrderForDualCamera()V

    .line 7990
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 7992
    :cond_0
    return-void

    .line 7987
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    goto :goto_0
.end method

.method public doStartDualPreviewSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7995
    const-string v0, "CommonEngine"

    const-string v1, "doStartDualPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7996
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 7997
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 7998
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualEffectCoordnate()V

    .line 8000
    :cond_0
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5617
    const-string v0, "CommonEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    .line 5621
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 5623
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 5624
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    .line 5627
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 5629
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 5630
    const-string v0, "CommonEngine"

    const-string v1, "camera device is already conntected for some reason (eg. onResume is called twice without calling onPause)"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    const-string v0, "CommonEngine"

    const-string v1, "skip connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 5647
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLocationTagOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isNetworkProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5650
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startReceivingLocationUpdates()V

    .line 5654
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationListener()V

    .line 5655
    return-void

    .line 5634
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$5;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 5642
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCameraThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5643
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5652
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public final doStartGolfShotSync()V
    .locals 2

    .prologue
    .line 5724
    const-string v0, "CommonEngine"

    const-string v1, "doStartGolfShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5726
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 5727
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 5728
    const-string v0, "CommonEngine"

    const-string v1, "doStartGolfShotSync - Current state is not GOLFSHOT_READY, return"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    :cond_0
    :goto_0
    return-void

    .line 5732
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5735
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 5736
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onGolfShotStarted()V

    .line 5738
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 5739
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGolfDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startGolfShot(I)V

    goto :goto_0
.end method

.method public final doStartPanoramaAsync()V
    .locals 3

    .prologue
    .line 5658
    const-string v0, "CommonEngine"

    const-string v1, "doStartPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Camera_panoramaShot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 5661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5663
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$6;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    .line 5680
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    const-string v1, "PanoramaStartingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5681
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5682
    return-void
.end method

.method public doStartPreviewAsync()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1430
    const-string v6, "CommonEngine"

    const-string v7, "doStartPreviewAsync"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1435
    .local v2, "_axtime_st_1":J
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1436
    :cond_0
    const-string v6, "CommonEngine"

    const-string v7, "return because mSurfaceHolder is null."

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v6, :cond_1

    .line 1439
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1586
    :cond_1
    :goto_0
    return-void

    .line 1455
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v6, :cond_3

    .line 1456
    const-string v6, "CommonEngine"

    const-string v7, "return because mCameraDevice is null."

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1461
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->dropCache()V

    .line 1462
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetPreviewSize()V

    .line 1464
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 1465
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1466
    .local v5, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v6

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 1467
    const-string v6, "rearpicturesize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->notifyPictureSizeWidthForDual()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->notifyPictureSizeHeightForDual()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1472
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_5

    .line 1473
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setEffect(Ljava/lang/String;)V

    .line 1478
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/sec/android/app/camera/CommonEngine$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/CommonEngine$3;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1568
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    const-string v7, "startPreviewThread"

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1569
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1570
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 1572
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v6

    if-ne v6, v8, :cond_7

    .line 1573
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "shareshot-hint"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1578
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v6, :cond_8

    .line 1579
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v6}, Landroid/view/OrientationEventListener;->enable()V

    .line 1583
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1584
    .local v0, "_axtime_ed_1":J
    const-string v6, "AXLOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PrepareStartPreview-End**End["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**[]**"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    move-wide v2, v0

    .line 1586
    goto/16 :goto_0

    .line 1468
    .end local v0    # "_axtime_ed_1":J
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v6

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 1469
    const-string v6, "frontpicturesize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->notifyPictureSizeWidthForDual()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->notifyPictureSizeHeightForDual()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1479
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 1480
    .local v4, "exception":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1481
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    .line 1484
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1485
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v7, -0x3

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1575
    .end local v4    # "exception":Ljava/io/IOException;
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "shareshot-hint"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1581
    :cond_8
    const-string v6, "CommonEngine"

    const-string v7, "doStartPreviewAsync : mOrientationListener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public doStartPreviewDummySync()V
    .locals 2

    .prologue
    .line 1589
    const-string v0, "CommonEngine"

    const-string v1, "doStartPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 1591
    return-void
.end method

.method public doStartRecordDualPreviewSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8003
    const-string v0, "CommonEngine"

    const-string v1, "doStartRecordDualPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8004
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 8005
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualRecordEffectCoordnate()V

    .line 8006
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 8008
    :cond_0
    return-void
.end method

.method public doStartSmileDetectionAsync()V
    .locals 2

    .prologue
    .line 5693
    const-string v0, "CommonEngine"

    const-string v1, "startSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 5696
    return-void
.end method

.method public doStartVideoRecordingAsync()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 6670
    const-string v0, "CommonEngine"

    const-string v1, "doStartVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6672
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 6673
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Camera_recordingDual"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 6677
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    .line 6678
    iput-wide v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    .line 6679
    iput-wide v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 6680
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6681
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->mDualCamcorderResolution:I

    .line 6685
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 6686
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6687
    const-string v0, "CommonEngine"

    const-string v1, "scheduleTakePicture - it is changed to doTakeVideoSnapShotAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6688
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 6692
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 6693
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6699
    :cond_3
    :goto_1
    const-string v0, "CommonEngine"

    const-string v1, "start video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6701
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-nez v0, :cond_4

    .line 6702
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$8;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 6759
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6760
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6761
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6785
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6786
    const-string v0, "GATE"

    const-string v1, "<GATE-M>VIDEO_RECORDING</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6790
    :cond_4
    return-void

    .line 6675
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Camera_recording"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6695
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public doStopActionShotSync()V
    .locals 2

    .prologue
    .line 5699
    const-string v0, "CommonEngine"

    const-string v1, "doStopActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 5702
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopSeriesActionShot()V

    .line 5703
    return-void
.end method

.method public final doStopBurstSync()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8138
    const-string v1, "CommonEngine"

    const-string v2, "doStopBurstSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8140
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$4902(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I

    .line 8141
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBurstShotProgress()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 8142
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    .line 8143
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 8153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_1

    .line 8154
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v4, v4, v4}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 8156
    :cond_1
    return-void

    .line 8146
    :cond_2
    const-wide/16 v2, 0x96

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8150
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    goto :goto_0

    .line 8147
    :catch_0
    move-exception v0

    .line 8148
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public doStopDramaShotSync()V
    .locals 2

    .prologue
    .line 5776
    const-string v0, "CommonEngine"

    const-string v1, "doStopDramaShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopDramaShot()V

    .line 5779
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 5781
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDramaShotCapturingStop()V

    .line 5782
    return-void
.end method

.method public doStopDualCameraLiteSync()V
    .locals 2

    .prologue
    .line 2370
    const-string v0, "CommonEngine"

    const-string v1, "doStopDualCameraLiteSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 2372
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onDualModeSelected(I)V

    .line 2373
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 2374
    return-void
.end method

.method public doStopDualCameraSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2430
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 2431
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 2432
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToFront()V

    .line 2443
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenSwitchCamera()V

    .line 2445
    return-void

    .line 2433
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2434
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToBack()V

    goto :goto_0

    .line 2437
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 2438
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToBack()V

    goto :goto_0

    .line 2439
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2440
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToFront()V

    goto :goto_0
.end method

.method public doStopEngineSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2291
    const-string v0, "CommonEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 2295
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 2296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    .line 2299
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v0, :cond_1

    .line 2300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopTouchAutoFocus()V

    .line 2302
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopReceivingLocationUpdates()V

    .line 2304
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2306
    const-string v0, "CommonEngine"

    const-string v1, "doStopEngineSync - set shooting mode as default"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2309
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    add-int/lit16 v1, v1, 0x190

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(III)V

    .line 2317
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    .line 2318
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2319
    return-void

    .line 2312
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    goto :goto_0
.end method

.method public doStopGolfShot()V
    .locals 2

    .prologue
    .line 5793
    const-string v0, "CommonEngine"

    const-string v1, "doStopGolfShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 5796
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 5797
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopGolfShot()V

    .line 5799
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getTouchtoCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5800
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchtoCaptureStarted(Z)V

    .line 5803
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onGolfShotCancel()V

    .line 5804
    return-void
.end method

.method public doStopPanoramaSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5706
    const-string v0, "CommonEngine"

    const-string v1, "doStopPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 5708
    const-string v0, "CommonEngine"

    const-string v1, "startPanorama - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5715
    :goto_0
    return-void

    .line 5711
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Camera_panoramaShot"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 5714
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->startPanorama(Z)V

    goto :goto_0
.end method

.method public doStopPreviewDummySync()V
    .locals 2

    .prologue
    .line 2345
    const-string v0, "CommonEngine"

    const-string v1, "doStopPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2349
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    .line 2354
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2358
    :goto_1
    return-void

    .line 2349
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto :goto_0

    .line 2356
    :cond_2
    const-string v0, "CommonEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doStopPreviewSync()V
    .locals 8

    .prologue
    .line 2322
    const-string v4, "CommonEngine"

    const-string v5, "doStopPreviewSync"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2327
    .local v2, "_axtime_st_1":J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    .line 2328
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_0

    .line 2329
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 2330
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 2333
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2335
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v4, :cond_1

    .line 2336
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->disable()V

    .line 2339
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2340
    .local v0, "_axtime_ed_1":J
    const-string v4, "AXLOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPreview**End["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**[]**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    move-wide v2, v0

    .line 2342
    return-void

    .line 2338
    .end local v0    # "_axtime_ed_1":J
    :cond_1
    const-string v4, "CommonEngine"

    const-string v5, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopSmileDetectionSync()V
    .locals 2

    .prologue
    .line 5718
    const-string v0, "CommonEngine"

    const-string v1, "stopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 5721
    return-void
.end method

.method public doStopVideoRecordingSync()V
    .locals 2

    .prologue
    .line 7090
    const-string v0, "CommonEngine"

    const-string v1, "doStopVideoRecordingSync!"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7091
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchtoCaptureStarted(Z)V

    .line 7092
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mIsCinepicRecording:Z

    if-nez v0, :cond_1

    .line 7095
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSyncThread()V

    .line 7098
    :goto_0
    return-void

    .line 7097
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSyncNoThread()V

    goto :goto_0
.end method

.method public doStopVideoRecordingSyncNoThread()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6965
    const-string v2, "CommonEngine"

    const-string v3, "doStopVideoRecordingSyncNoThread"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6968
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 6969
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->setPreviewTransparent(Z)V

    .line 6972
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 6973
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "Camera_recordingDual"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 6978
    :goto_0
    const-string v2, "CommonEngine"

    const-string v3, "Stopping VideoRecording..."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6979
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_b

    .line 6981
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 6982
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6983
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6986
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6987
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 6988
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6989
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->stopAnimatedPhoto()V

    .line 6992
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6994
    .local v1, "ioBusyUnVoteIntent":Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6995
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6997
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6998
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->enableSystemSoundEffect()V

    .line 7010
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 7011
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7029
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7030
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->makeVideoFileSlow()V

    .line 7033
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_5

    .line 7034
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->renameTempFile()V

    .line 7037
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 7039
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 7041
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 7042
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 7045
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7046
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " </GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7049
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->registerVideo()V

    .line 7054
    .end local v1    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :cond_7
    :goto_1
    iput-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 7056
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->removeHideFocusRectMessage()V

    .line 7058
    sget-boolean v2, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v2, :cond_8

    .line 7059
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 7066
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 7067
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    .line 7068
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 7071
    const-string v2, "CommonEngine"

    const-string v3, "Stopping VideoRecording is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7072
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v2, v2, Lcom/sec/android/app/camera/Camera;->mIsReocrdingStoppedForcely:Z

    if-nez v2, :cond_9

    .line 7073
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 7074
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 7076
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCamcorderRecordingStopSound()V

    .line 7077
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7078
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSwitchToCoverCameraPreview()V

    .line 7082
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 7083
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->startDualRecordingMode()V

    .line 7086
    :cond_9
    :goto_3
    return-void

    .line 6975
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "Camera_recording"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 7012
    .restart local v1    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 7013
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7014
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 7015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 7017
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    .line 7018
    iput-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 7019
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeVideoFileDescriptor()V

    .line 7021
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 7022
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7023
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isRecordingMenuTop()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7024
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_3

    .line 7050
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :cond_b
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_7

    .line 7051
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_1

    .line 7080
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSwitchToCameraPreview()V

    goto :goto_2
.end method

.method public doStopVideoRecordingSyncThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6793
    const-string v0, "CommonEngine"

    const-string v1, "doStopVideoRecordingSyncThread E"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    sput-boolean v2, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    .line 6796
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 6797
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6798
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6800
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6802
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 6803
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLContext;->setPreviewTransparent(Z)V

    .line 6807
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$9;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    .line 6952
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    const-string v1, "StopRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6954
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 6955
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6961
    return-void
.end method

.method public final doSwitchCameraSync()V
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToFront()V

    .line 2366
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenSwitchCamera()V

    .line 2367
    return-void

    .line 2363
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2364
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToBack()V

    goto :goto_0
.end method

.method public doSwitchToCamcorderPreviewSync()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/16 v13, 0x3a98

    const/16 v12, 0xb

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1643
    const-string v7, "CommonEngine"

    const-string v10, "doSwitchToCamcorderPreviewSync"

    invoke-static {v7, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v7, :cond_0

    .line 1645
    const-string v7, "CommonEngine"

    const-string v8, "doSwitchToCamcorderPreviewSync : mParameters is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :goto_0
    return-void

    .line 1648
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v7, :cond_1

    .line 1649
    const-string v7, "CommonEngine"

    const-string v8, "doSwitchToCamcorderPreviewSync : mCameraDevice is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1652
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 1654
    const/4 v3, 0x0

    .local v3, "previewWidth":I
    const/4 v2, 0x0

    .local v2, "previewHeight":I
    const/4 v1, 0x0

    .local v1, "pictureWidth":I
    const/4 v0, 0x0

    .line 1655
    .local v0, "pictureHeight":I
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    .line 1657
    .local v4, "resolutionId":I
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 1888
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1889
    const/16 v3, 0x5a0

    .line 1890
    const/16 v2, 0x438

    .line 1895
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1896
    const/16 v1, 0x1020

    .line 1897
    const/16 v0, 0xc18

    .line 1908
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1909
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1910
    const-string v7, "800x450"

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1911
    const/16 v3, 0x780

    .line 1912
    const/16 v2, 0x438

    .line 1945
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v7

    if-eqz v7, :cond_4

    .line 1946
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0xa

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v7

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1950
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideDualBoundryRect()V

    .line 1951
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v7

    if-ne v7, v8, :cond_6

    .line 1952
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x5dc0

    const/16 v11, 0x5dc0

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1954
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x65

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1956
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 1957
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "dualrecording-hint"

    invoke-virtual {v7, v10, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1958
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v7

    if-ne v7, v8, :cond_37

    .line 1959
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    :goto_4
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1965
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v10, 0x5

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-boolean v7, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    if-eqz v7, :cond_8

    .line 1967
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 1969
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v7, v10}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1972
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v10}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2133
    :goto_5
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 2134
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v7

    if-ne v7, v8, :cond_b

    .line 2135
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->setDualInvisible()V

    .line 2136
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_a

    .line 2137
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 2138
    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->needToOrientationForDual()V

    .line 2141
    :cond_b
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->resizeForCamcorderPreviewAspectRatio()Z

    goto/16 :goto_0

    .line 1659
    :sswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1660
    const/16 v3, 0xf00

    .line 1661
    const/16 v2, 0x870

    .line 1666
    :goto_6
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1667
    const/16 v1, 0x1020

    .line 1668
    const/16 v0, 0x912

    goto/16 :goto_2

    .line 1663
    :cond_c
    const/16 v3, 0x780

    .line 1664
    const/16 v2, 0x438

    goto :goto_6

    .line 1669
    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1670
    const/16 v1, 0x1020

    .line 1671
    const/16 v0, 0x912

    goto/16 :goto_2

    .line 1673
    :cond_e
    const/16 v1, 0x780

    .line 1674
    const/16 v0, 0x438

    .line 1676
    goto/16 :goto_2

    .line 1678
    :sswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1679
    const/16 v3, 0x780

    .line 1680
    const/16 v2, 0x438

    .line 1685
    :goto_7
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1686
    const/16 v1, 0x1020

    .line 1687
    const/16 v0, 0x912

    goto/16 :goto_2

    .line 1682
    :cond_f
    const/16 v3, 0x780

    .line 1683
    const/16 v2, 0x438

    goto :goto_7

    .line 1688
    :cond_10
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1689
    const/16 v1, 0x1020

    .line 1690
    const/16 v0, 0x912

    goto/16 :goto_2

    .line 1692
    :cond_11
    const/16 v1, 0x780

    .line 1693
    const/16 v0, 0x438

    .line 1695
    goto/16 :goto_2

    .line 1697
    :sswitch_2
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1698
    const/16 v3, 0x780

    .line 1699
    const/16 v2, 0x438

    .line 1704
    :goto_8
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1705
    const/16 v1, 0x780

    .line 1706
    const/16 v0, 0x438

    goto/16 :goto_2

    .line 1701
    :cond_12
    const/16 v3, 0x780

    .line 1702
    const/16 v2, 0x438

    goto :goto_8

    .line 1707
    :cond_13
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1708
    const/16 v1, 0x780

    .line 1709
    const/16 v0, 0x438

    goto/16 :goto_2

    .line 1711
    :cond_14
    const/16 v1, 0x780

    .line 1712
    const/16 v0, 0x438

    .line 1714
    goto/16 :goto_2

    .line 1716
    :sswitch_3
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1717
    const/16 v3, 0x5a0

    .line 1718
    const/16 v2, 0x438

    .line 1723
    :goto_9
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1724
    const/16 v1, 0x1020

    .line 1725
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1720
    :cond_15
    const/16 v3, 0x5a0

    .line 1721
    const/16 v2, 0x438

    goto :goto_9

    .line 1726
    :cond_16
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1727
    const/16 v1, 0x1020

    .line 1728
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1730
    :cond_17
    const/16 v1, 0x5a0

    .line 1731
    const/16 v0, 0x438

    .line 1733
    goto/16 :goto_2

    .line 1735
    :sswitch_4
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1736
    const/16 v3, 0x438

    .line 1737
    const/16 v2, 0x438

    .line 1738
    const/16 v1, 0xc18

    .line 1739
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1743
    :sswitch_5
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1744
    const/16 v3, 0x780

    .line 1745
    const/16 v2, 0x438

    .line 1750
    :goto_a
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1751
    const/16 v1, 0x1020

    .line 1752
    const/16 v0, 0x912

    goto/16 :goto_2

    .line 1747
    :cond_18
    const/16 v3, 0x780

    .line 1748
    const/16 v2, 0x438

    goto :goto_a

    .line 1753
    :cond_19
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1754
    const/16 v1, 0x1020

    .line 1755
    const/16 v0, 0x912

    goto/16 :goto_2

    .line 1757
    :cond_1a
    const/16 v1, 0x780

    .line 1758
    const/16 v0, 0x438

    .line 1760
    goto/16 :goto_2

    .line 1762
    :sswitch_6
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1763
    const/16 v3, 0x780

    .line 1764
    const/16 v2, 0x438

    .line 1769
    :goto_b
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1770
    const/16 v1, 0x780

    .line 1771
    const/16 v0, 0x438

    goto/16 :goto_2

    .line 1766
    :cond_1b
    const/16 v3, 0x780

    .line 1767
    const/16 v2, 0x438

    goto :goto_b

    .line 1772
    :cond_1c
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1773
    const/16 v1, 0x780

    .line 1774
    const/16 v0, 0x438

    goto/16 :goto_2

    .line 1776
    :cond_1d
    const/16 v1, 0x780

    .line 1777
    const/16 v0, 0x438

    .line 1779
    goto/16 :goto_2

    .line 1781
    :sswitch_7
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1782
    const/16 v1, 0x1020

    .line 1783
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1784
    :cond_1e
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1785
    const/16 v1, 0x1020

    .line 1786
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1788
    :cond_1f
    const/16 v1, 0x5a0

    .line 1789
    const/16 v0, 0x438

    .line 1791
    goto/16 :goto_2

    .line 1793
    :sswitch_8
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1794
    const/16 v3, 0x654

    .line 1795
    const/16 v2, 0x3f0

    .line 1800
    :goto_c
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1801
    const/16 v1, 0x1020

    .line 1802
    const/16 v0, 0xac0

    goto/16 :goto_2

    .line 1797
    :cond_20
    const/16 v3, 0x654

    .line 1798
    const/16 v2, 0x3f0

    goto :goto_c

    .line 1803
    :cond_21
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1804
    const/16 v1, 0x1020

    .line 1805
    const/16 v0, 0xac0

    goto/16 :goto_2

    .line 1807
    :cond_22
    const/16 v1, 0x654

    .line 1808
    const/16 v0, 0x438

    .line 1810
    goto/16 :goto_2

    .line 1812
    :sswitch_9
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1813
    const/16 v3, 0x5a0

    .line 1814
    const/16 v2, 0x438

    .line 1819
    :goto_d
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1820
    const/16 v1, 0x1020

    .line 1821
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1816
    :cond_23
    const/16 v3, 0x5a0

    .line 1817
    const/16 v2, 0x438

    goto :goto_d

    .line 1822
    :cond_24
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1823
    const/16 v1, 0x1020

    .line 1824
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1826
    :cond_25
    const/16 v1, 0x5a0

    .line 1827
    const/16 v0, 0x438

    .line 1829
    goto/16 :goto_2

    .line 1831
    :sswitch_a
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1832
    const/16 v3, 0x780

    .line 1833
    const/16 v2, 0x438

    .line 1838
    :goto_e
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1839
    const/16 v1, 0x1020

    .line 1840
    const/16 v0, 0xac0

    goto/16 :goto_2

    .line 1835
    :cond_26
    const/16 v3, 0x780

    .line 1836
    const/16 v2, 0x438

    goto :goto_e

    .line 1841
    :cond_27
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1842
    const/16 v1, 0x1020

    .line 1843
    const/16 v0, 0xac0

    goto/16 :goto_2

    .line 1845
    :cond_28
    const/16 v1, 0x780

    .line 1846
    const/16 v0, 0x438

    .line 1848
    goto/16 :goto_2

    .line 1850
    :sswitch_b
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1851
    const/16 v3, 0x5a0

    .line 1852
    const/16 v2, 0x438

    .line 1857
    :goto_f
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1858
    const/16 v1, 0x1020

    .line 1859
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1854
    :cond_29
    const/16 v3, 0x5a0

    .line 1855
    const/16 v2, 0x438

    goto :goto_f

    .line 1860
    :cond_2a
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1861
    const/16 v1, 0x1020

    .line 1862
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1864
    :cond_2b
    const/16 v1, 0x5a0

    .line 1865
    const/16 v0, 0x438

    .line 1867
    goto/16 :goto_2

    .line 1869
    :sswitch_c
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1870
    const/16 v3, 0x420

    .line 1871
    const/16 v2, 0x360

    .line 1876
    :goto_10
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1877
    const/16 v1, 0x1020

    .line 1878
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1873
    :cond_2c
    const/16 v3, 0x420

    .line 1874
    const/16 v2, 0x360

    goto :goto_10

    .line 1879
    :cond_2d
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1880
    const/16 v1, 0x1020

    .line 1881
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1883
    :cond_2e
    const/16 v1, 0x5a0

    .line 1884
    const/16 v0, 0x438

    .line 1886
    goto/16 :goto_2

    .line 1892
    :cond_2f
    const/16 v3, 0x5a0

    .line 1893
    const/16 v2, 0x438

    goto/16 :goto_1

    .line 1898
    :cond_30
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1899
    const/16 v1, 0x1020

    .line 1900
    const/16 v0, 0xc18

    goto/16 :goto_2

    .line 1902
    :cond_31
    const/16 v1, 0x5a0

    .line 1903
    const/16 v0, 0x438

    goto/16 :goto_2

    .line 1914
    :cond_32
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v7

    if-ne v7, v8, :cond_36

    .line 1915
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1916
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1917
    const/16 v7, 0x12

    if-ne v4, v7, :cond_34

    .line 1918
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1919
    const/16 v3, 0x5a0

    .line 1920
    const/16 v2, 0x438

    goto/16 :goto_3

    .line 1922
    :cond_33
    const/16 v3, 0x5a0

    .line 1923
    const/16 v2, 0x438

    goto/16 :goto_3

    .line 1926
    :cond_34
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1927
    const/16 v3, 0x420

    .line 1928
    const/16 v2, 0x360

    goto/16 :goto_3

    .line 1930
    :cond_35
    const/16 v3, 0x420

    .line 1931
    const/16 v2, 0x360

    goto/16 :goto_3

    .line 1935
    :cond_36
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v7

    if-ne v7, v14, :cond_3

    .line 1936
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1937
    const-string v7, "1280x720"

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1938
    const/16 v3, 0x500

    .line 1939
    const/16 v2, 0x2d0

    .line 1940
    move v1, v3

    .line 1941
    move v0, v2

    goto/16 :goto_3

    .line 1961
    :cond_37
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1973
    :cond_38
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v7

    const/16 v10, 0x26

    if-ne v7, v10, :cond_3a

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1974
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v13, v13}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1984
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 1985
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1986
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x65

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x6f

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "video_recording_gamma"

    const-string v11, "on"

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "slow_ae"

    const-string v11, "on"

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera;->startAnimatedPhoto()V

    .line 1993
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v7, :cond_39

    .line 1994
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v10}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_5

    .line 1996
    :cond_39
    const-string v7, "CommonEngine"

    const-string v8, "doSwitchToCamcorderPreviewSync()- mCameraDevice is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2004
    :cond_3a
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v7

    if-ne v7, v8, :cond_40

    .line 2006
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v13, v13}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 2061
    :goto_11
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 2063
    const-string v7, "CommonEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreviewSize, previewWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", previewHeight = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 2065
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x65

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 2070
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v6

    .line 2071
    .local v6, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v6, :cond_3b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_3b

    .line 2072
    const/4 v5, 0x0

    .line 2073
    .local v5, "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    invoke-virtual {p0, v6, v3, v2}, Lcom/sec/android/app/camera/CommonEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v5

    .line 2074
    if-eqz v5, :cond_3b

    .line 2075
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v10, v5, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v11, v5, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 2080
    .end local v5    # "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_3b
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v7

    if-ne v7, v8, :cond_43

    .line 2081
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    :goto_12
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 2088
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v7

    const/16 v10, 0x26

    if-ne v7, v10, :cond_44

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v7

    if-eqz v7, :cond_44

    move v7, v8

    :goto_13
    if-nez v7, :cond_3c

    .line 2089
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v10, 0x5

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    :cond_3c
    iget-boolean v7, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    if-eqz v7, :cond_3d

    .line 2092
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 2094
    :cond_3d
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v7, v10}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2098
    :cond_3e
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "video_recording_gamma"

    const-string v11, "on"

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "slow_ae"

    const-string v11, "on"

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v7

    if-eqz v7, :cond_45

    move v7, v8

    :goto_14
    invoke-virtual {v10, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2102
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v7

    if-ne v7, v8, :cond_46

    .line 2103
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "sw-vdis"

    const-string v11, "on"

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :goto_15
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v7

    if-ne v7, v8, :cond_3f

    .line 2109
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x12

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2116
    :cond_3f
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v7

    if-eqz v7, :cond_47

    .line 2117
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x6f

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    :goto_16
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 2123
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 2124
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v7, v10}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_5

    .line 2023
    .end local v6    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_40
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 2024
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_11

    .line 2026
    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const v10, 0xea60

    const v11, 0xea60

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_11

    .line 2030
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const v10, 0x1d4c0

    const v11, 0x1d4c0

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_11

    .line 2034
    :cond_41
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 2035
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x7530

    invoke-virtual {v7, v13, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_11

    .line 2037
    :cond_42
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x7530

    const/16 v11, 0x7530

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_11

    .line 2083
    .restart local v6    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_43
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_44
    move v7, v9

    .line 2088
    goto/16 :goto_13

    :cond_45
    move v7, v9

    .line 2101
    goto/16 :goto_14

    .line 2105
    :cond_46
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v10, "sw-vdis"

    const-string v11, "off"

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2119
    :cond_47
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v10, 0x6f

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2144
    .end local v6    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_48
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 2145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    goto/16 :goto_0

    .line 1657
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_9
        0xd -> :sswitch_1
        0xe -> :sswitch_5
        0xf -> :sswitch_8
        0x12 -> :sswitch_b
        0x13 -> :sswitch_c
        0x1f -> :sswitch_3
        0x22 -> :sswitch_7
        0x28 -> :sswitch_0
        0x29 -> :sswitch_a
        0x2a -> :sswitch_2
        0x2c -> :sswitch_6
        0x2e -> :sswitch_4
    .end sparse-switch

    .line 2024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public doSwitchToCameraPreviewSync()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 2155
    const-string v1, "CommonEngine"

    const-string v2, "doSwitchToCameraPreviewSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 2157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetPreviewSize()V

    .line 2159
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_0

    .line 2160
    const-string v1, "CommonEngine"

    const-string v2, "doSwitchToCameraPreviewSync() - mParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :goto_0
    return-void

    .line 2163
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 2164
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 2167
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2168
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_3

    .line 2169
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    .line 2171
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2174
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 2175
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2189
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v1

    if-eqz v1, :cond_5

    .line 2196
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_6

    .line 2200
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2260
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2266
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2267
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 2268
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_8

    .line 2269
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setDualInvisible()V

    .line 2270
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_9

    .line 2271
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 2272
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->needToOrientationForDual()V

    .line 2275
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resizeForCameraPreviewAspectRatio()Z

    goto/16 :goto_0

    .line 2177
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v0

    .line 2178
    .local v0, "focus":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2187
    .end local v0    # "focus":I
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2203
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_10

    .line 2204
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_e

    .line 2209
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2212
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v1

    if-eqz v1, :cond_f

    .line 2214
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2218
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v1

    if-ne v1, v4, :cond_11

    .line 2219
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2235
    :goto_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "video_recording_gamma"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "slow_ae"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2243
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "sw-vdis"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_13

    .line 2246
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 2247
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2253
    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-direct {v1, p0, v4, v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 2255
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 2256
    const/16 v1, 0x55

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_3

    .line 2206
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2221
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v0

    .line 2222
    .restart local v0    # "focus":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2231
    .end local v0    # "focus":I
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2249
    :cond_13
    const-string v1, "CommonEngine"

    const-string v2, "doSwitchToCamcorderPreviewSync()- mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2277
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2278
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartCameraPreview()V

    .line 2280
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_16

    .line 2281
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartRecordDualPreview()V

    .line 2282
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 2283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    .line 2284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetTrackingVisible()V

    goto/16 :goto_0
.end method

.method public doSwitchToCoverCamcorderPreviewSync()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1603
    const-string v6, "CommonEngine"

    const-string v7, "doSwitchToCoverCamcorderPreviewSync"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v6, :cond_0

    .line 1605
    const-string v6, "CommonEngine"

    const-string v7, "doSwitchToCoverCamcorderPreviewSync : mParameters is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :goto_0
    return-void

    .line 1608
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v6, :cond_1

    .line 1609
    const-string v6, "CommonEngine"

    const-string v7, "doSwitchToCoverCamcorderPreviewSync : mCameraDevice is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1612
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 1613
    const/4 v3, 0x0

    .local v3, "previewWidth":I
    const/4 v2, 0x0

    .local v2, "previewHeight":I
    const/4 v1, 0x0

    .local v1, "pictureWidth":I
    const/4 v0, 0x0

    .line 1615
    .local v0, "pictureHeight":I
    const/16 v3, 0x438

    .line 1616
    const/16 v2, 0x438

    .line 1617
    const/16 v1, 0xc18

    .line 1618
    const/16 v0, 0xc18

    .line 1620
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doSwitchToCoverCamcorderPreviewSync setPreviewSize, previewWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", previewHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1622
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 1625
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 1627
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v5

    .line 1628
    .local v5, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_2

    .line 1629
    const/4 v4, 0x0

    .line 1630
    .local v4, "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    invoke-virtual {p0, v5, v3, v2}, Lcom/sec/android/app/camera/CommonEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v4

    .line 1631
    if-eqz v4, :cond_2

    .line 1632
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v7, v4, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v8, v4, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 1635
    .end local v4    # "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x65

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1080x1080"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 1637
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1638
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1639
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 1640
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    goto/16 :goto_0
.end method

.method public doSwitchToCoverCameraPreviewSync()V
    .locals 2

    .prologue
    .line 1593
    const-string v0, "CommonEngine"

    const-string v1, "doSwitchToCoverCameraPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 1595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetPreviewSize()V

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resizeForCameraPreviewAspectRatio()Z

    .line 1598
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 1599
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    .line 1600
    return-void
.end method

.method public doTakePictureAsync()V
    .locals 11

    .prologue
    const/16 v10, 0x17

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5828
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shot2Shot-TakePicture**StartU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5832
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v8, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 5834
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5835
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    sget v3, Lcom/sec/android/app/camera/CommonEngine;->mLightPipShotCount:I

    if-eq v3, v9, :cond_2

    .line 5836
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 5838
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v2

    .line 5839
    .local v2, "rotation":I
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTakePictureAsync - rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 5842
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    if-ne v3, v9, :cond_3

    .line 5843
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5846
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 5847
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_8

    .line 5849
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v10, :cond_4

    .line 5850
    const-string v3, "CommonEngine"

    const-string v4, "doTakePictureAsync : multi frame shot"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotStarted()V

    .line 5852
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->startMultiFrameShot()V

    .line 5853
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_SOUND:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 5856
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startBlinkShutterAnimation()V

    .line 5859
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-eq v3, v10, :cond_5

    .line 5875
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5876
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setWeather(I)V

    .line 5877
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setCityId(J)V

    .line 5881
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 5882
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5897
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_7

    .line 5898
    const-string v3, "CommonEngine"

    const-string v4, "[HDR] mNumOfSavedImageInHDR = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5899
    iput v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    .line 5900
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    .line 5903
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_8

    .line 5904
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v3

    if-nez v3, :cond_8

    .line 5905
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onSoundShotGetAudioByAutoMode()V

    .line 5909
    :cond_8
    :goto_0
    return-void

    .line 5884
    :catch_0
    move-exception v1

    .line 5887
    .local v1, "rex":Ljava/lang/RuntimeException;
    const-string v3, "CommonEngine"

    const-string v4, "RuntimeException occured during doTakePictureAsync()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5888
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0x9

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5890
    .end local v1    # "rex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 5891
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "CommonEngine"

    const-string v4, "An unknown exception occured during doTakePictureAsync()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5892
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final doTakeVideoSnapShotAsync()V
    .locals 7

    .prologue
    .line 7101
    const-string v3, "CommonEngine"

    const-string v4, "doTakePictureAsync from camcorder engine"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7103
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_2

    .line 7104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 7105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v2

    .line 7107
    .local v2, "rotation":I
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOrientationAndSendItToFramework - rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7108
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 7110
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_CamcoderForceShutterSoundDuringSnapShot"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7111
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 7115
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_1

    .line 7116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7117
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setWeather(I)V

    .line 7118
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setCityId(J)V

    .line 7124
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 7125
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/sec/android/app/camera/CommonEngine$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CommonEngine$10;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7277
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_2

    .line 7278
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startPostRecordingSnapAnimation()V

    .line 7281
    .end local v2    # "rotation":I
    :cond_2
    :goto_0
    return-void

    .line 7264
    .restart local v2    # "rotation":I
    :catch_0
    move-exception v1

    .line 7267
    .local v1, "rex":Ljava/lang/RuntimeException;
    const-string v3, "CommonEngine"

    const-string v4, "RuntimeException occured during doTakeVideoSnapShotAsync()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7268
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0x9

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 7270
    .end local v1    # "rex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 7271
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "CommonEngine"

    const-string v4, "An unknown exception occured during doTakeVideoSnapShotAsync()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7272
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final doWaitAsync(I)V
    .locals 4
    .param p1, "milisec"    # I

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0x8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2449
    return-void
.end method

.method public enablePreviewCallbackManager()V
    .locals 5

    .prologue
    const/16 v4, 0x1ac

    const/16 v3, 0x140

    const/16 v2, 0xf0

    const/4 v1, 0x1

    .line 8655
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 8656
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8657
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/camera/CommonEngine;->setUsePreviewCallback(ZI)V

    .line 8658
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8659
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    .line 8664
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8665
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0, v4, v2, v1}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    .line 8669
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 8670
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8671
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8672
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->setPreviewBuffer(Lcom/sec/android/seccamera/SecCamera;)V

    .line 8675
    :cond_1
    return-void

    .line 8661
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    goto :goto_0

    .line 8667
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0, v3, v2, v1}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    goto :goto_1
.end method

.method public enablePreviewCallbackManagerPanorama360()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8680
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    .line 8681
    .local v1, "pw":I
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 8682
    .local v0, "ph":I
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 8683
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8684
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    .line 8688
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8689
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    .line 8693
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_1

    .line 8694
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8695
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8696
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->setPreviewBuffer(Lcom/sec/android/seccamera/SecCamera;)V

    .line 8698
    :cond_1
    return-void

    .line 8686
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    goto :goto_0

    .line 8691
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    goto :goto_1
.end method

.method public enableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 2453
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2454
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2457
    return-void
.end method

.method protected findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I
    .locals 10
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;
    .param p2, "requestedMinFps"    # I
    .param p3, "requestedMaxFps"    # I

    .prologue
    .line 2468
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requsted fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    const/4 v1, 0x0

    .line 2471
    .local v1, "MIN_IDX":I
    const/4 v0, 0x1

    .line 2472
    .local v0, "MAX_IDX":I
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 2473
    .local v3, "fpsRange":[I
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 2475
    .local v2, "bestFpsRange":[I
    invoke-virtual {p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 2477
    .local v4, "fpsRangeList":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v4, :cond_0

    .line 2478
    const-string v7, "CommonEngine"

    const-string v8, "supported preview fps range is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const/4 v3, 0x0

    .line 2529
    .end local v3    # "fpsRange":[I
    :goto_0
    return-object v3

    .line 2482
    .restart local v3    # "fpsRange":[I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    .line 2483
    const/4 v8, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2484
    const/4 v8, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2486
    const/4 v7, 0x1

    aget v7, v3, v7

    if-ne p3, v7, :cond_6

    .line 2487
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_1

    .line 2489
    move-object v2, v3

    .line 2490
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2492
    :cond_1
    if-nez v5, :cond_2

    .line 2494
    move-object v2, v3

    .line 2495
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2499
    :cond_2
    move v6, v5

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_5

    .line 2500
    const/4 v8, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2501
    const/4 v8, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2503
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_3

    .line 2505
    move-object v2, v3

    .line 2506
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2508
    :cond_3
    const/4 v7, 0x0

    aget v7, v3, v7

    if-le p2, v7, :cond_4

    .line 2509
    move-object v2, v3

    .line 2510
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2499
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2515
    :cond_5
    move-object v2, v3

    .line 2516
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2519
    .end local v6    # "j":I
    :cond_6
    const/4 v7, 0x1

    aget v7, v3, v7

    if-le p3, v7, :cond_7

    .line 2520
    move-object v2, v3

    .line 2521
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2482
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 2527
    :cond_8
    move-object v2, v3

    .line 2528
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 16
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;II)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 2538
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez p1, :cond_0

    .line 2539
    const/4 v10, 0x0

    .line 2562
    :goto_0
    return-object v10

    .line 2541
    :cond_0
    const/4 v10, 0x0

    .line 2542
    .local v10, "thumbnailSize":Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 2543
    .local v6, "minRatioDiff":D
    const v4, 0x186a0

    .line 2544
    .local v4, "minGap":I
    const/4 v3, 0x0

    .line 2546
    .local v3, "index":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2547
    .local v5, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v12, v5, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v12, v12

    iget v14, v5, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 2550
    .local v8, "ratio":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2551
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double/2addr v12, v14

    sub-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v12, v6

    if-gtz v12, :cond_1

    .line 2554
    iget v12, v5, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    sub-int v12, v12, p2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 2555
    .local v11, "widthGap":I
    if-le v4, v11, :cond_1

    .line 2556
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2557
    move v4, v11

    goto :goto_1

    .line 2560
    .end local v5    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v8    # "ratio":D
    .end local v11    # "widthGap":I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "thumbnailSize":Lcom/sec/android/seccamera/SecCamera$Size;
    check-cast v10, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2561
    .restart local v10    # "thumbnailSize":Lcom/sec/android/seccamera/SecCamera$Size;
    const-string v12, "CommonEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setJPEGThumbnailSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAutoShotNightMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6216
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_1

    .line 6217
    const-string v1, "CommonEngine"

    const-string v2, "getAutoShotNightMode()- mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6232
    :cond_0
    :goto_0
    return v0

    .line 6222
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 6224
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 6225
    goto :goto_0
.end method

.method public getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;
    .locals 3

    .prologue
    .line 7329
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 7330
    const-string v0, "CommonEngine"

    const-string v1, "getCamcorderInnerProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7331
    const/4 v0, 0x0

    .line 7338
    :goto_0
    return-object v0

    .line 7334
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    if-eqz v0, :cond_1

    .line 7335
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0

    .line 7337
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 7338
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 2

    .prologue
    .line 7343
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 7344
    const-string v0, "CommonEngine"

    const-string v1, "getCamcorderProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7345
    const/4 v0, 0x0

    .line 7354
    :goto_0
    return-object v0

    .line 7348
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    .line 7349
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 7351
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getCamcorderProfileQualityLevel(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 7354
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method public getCameraImages()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3691
    const/4 v6, 0x0

    .line 3692
    .local v6, "NumberOfImages":I
    const-string v3, "bucket_display_name = \'Camera\'"

    .line 3693
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3694
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3695
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 3696
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v7, v6

    .line 3699
    .end local v6    # "NumberOfImages":I
    .local v7, "NumberOfImages":I
    :goto_0
    return v7

    .end local v7    # "NumberOfImages":I
    .restart local v6    # "NumberOfImages":I
    :cond_0
    move v7, v6

    .end local v6    # "NumberOfImages":I
    .restart local v7    # "NumberOfImages":I
    goto :goto_0
.end method

.method public getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;
    .locals 1

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    return-object v0
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7358
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 2574
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    return v0
.end method

.method public getDualHandlerOffset()I
    .locals 8

    .prologue
    const/16 v3, 0xf0

    .line 7845
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_0

    .line 7846
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 7847
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v1, :cond_1

    .line 7848
    const-string v4, "CommonEngine"

    const-string v5, "supported preview size is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7858
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_0
    :goto_0
    return v3

    .line 7851
    .restart local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v4, v1, v6, v7}, Lcom/sec/android/app/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v2

    .line 7852
    .local v2, "widePreviewSize":Lcom/sec/android/seccamera/SecCamera$Size;
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v4, v1, v6, v7}, Lcom/sec/android/app/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    .line 7854
    .local v0, "normalPreviewSize":Lcom/sec/android/seccamera/SecCamera$Size;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 7855
    iget v3, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method public getFocalLength()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8934
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 8936
    .local v1, "focallength":[I
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "focallength-value-numerator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 8937
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "focallength-value-denominator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8943
    :goto_0
    return-object v1

    .line 8938
    :catch_0
    move-exception v0

    .line 8939
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x1a4

    aput v2, v1, v5

    .line 8940
    const/16 v2, 0x64

    aput v2, v1, v6

    .line 8941
    const-string v2, "CommonEngine"

    const-string v3, "unable to get FocalLength"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 2578
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    return v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/16 v10, 0x0

    .line 2582
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v8, :cond_1

    .line 2622
    :cond_0
    :goto_0
    return-object v1

    .line 2586
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->removeGpsData()V

    .line 2589
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v8

    if-ne v8, v0, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 2592
    .local v1, "loc":Landroid/location/Location;
    :cond_2
    if-eqz v1, :cond_0

    .line 2593
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 2594
    .local v2, "lat":D
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2595
    .local v4, "lon":D
    cmpl-double v8, v2, v10

    if-nez v8, :cond_3

    cmpl-double v8, v4, v10

    if-eqz v8, :cond_4

    .line 2598
    .local v0, "hasLatLon":Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 2599
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLatitude(D)V

    .line 2600
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLongitude(D)V

    .line 2601
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2602
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    .line 2609
    :goto_2
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 2612
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2613
    .local v6, "utcTimeSeconds":J
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    goto :goto_0

    .line 2595
    .end local v0    # "hasLatLon":Z
    .end local v6    # "utcTimeSeconds":J
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 2607
    .restart local v0    # "hasLatLon":Z
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 2616
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 2626
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mGroupId:I

    return v0
.end method

.method public getIsCalledSwitchToCameraSync()Z
    .locals 1

    .prologue
    .line 2151
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    return v0
.end method

.method public getLandscapeActive()Z
    .locals 1

    .prologue
    .line 2630
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLandscapeActive:Z

    return v0
.end method

.method public getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object v0
.end method

.method public getLastCapturedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLastDateTaken()J
    .locals 2

    .prologue
    .line 2646
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTaken:J

    return-wide v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 2650
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    return v0
.end method

.method public getLightPipShotCount()I
    .locals 1

    .prologue
    .line 4283
    sget v0, Lcom/sec/android/app/camera/CommonEngine;->mLightPipShotCount:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 2654
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    return-wide v0
.end method

.method public getMaxaperture()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8947
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 8949
    .local v1, "maxaperture":[I
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "maxaperture-value-numerator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 8950
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "maxaperture-value-denominator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8957
    :goto_0
    return-object v1

    .line 8951
    :catch_0
    move-exception v0

    .line 8952
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0xe3

    aput v2, v1, v5

    .line 8953
    const/16 v2, 0x64

    aput v2, v1, v6

    .line 8954
    const-string v2, "CommonEngine"

    const-string v3, "unable to get Maxaperture"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOrientationOnTake()I
    .locals 1

    .prologue
    .line 2658
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationOnTake:I

    return v0
.end method

.method public getOriginalViewFinderHeight()I
    .locals 1

    .prologue
    .line 5938
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    return v0
.end method

.method public getOriginalViewFinderWidth()I
    .locals 1

    .prologue
    .line 5934
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    return v0
.end method

.method public getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 5955
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 5951
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 5947
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    return v0
.end method

.method public getRemainTime()I
    .locals 6

    .prologue
    .line 2662
    const/4 v1, 0x0

    .line 2663
    .local v1, "nBitrate":I
    const/4 v3, 0x0

    .line 2664
    .local v3, "nVideoBitrate":I
    const/4 v0, 0x0

    .line 2665
    .local v0, "nAudioBitrate":I
    const/4 v2, 0x0

    .line 2667
    .local v2, "nRemainTime":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->loadInnerProfile()V

    .line 2669
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getVideoBitRateFromProfile()I

    move-result v3

    .line 2672
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2673
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getAudioBitRateFromProfile()I

    move-result v0

    .line 2676
    :cond_0
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 2677
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 2679
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 2681
    return v2
.end method

.method public getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;
    .locals 1

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    return-object v0
.end method

.method public getSavedImageRichtoneCompleted()Z
    .locals 1

    .prologue
    .line 2693
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    return v0
.end method

.method public getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;
    .locals 1

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    return-object v0
.end method

.method public getSurpportedVideoSize(II)Z
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 7370
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 7371
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v2, :cond_1

    .line 7372
    const-string v3, "CommonEngine"

    const-string v4, "supported video sizes is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7373
    const/4 v3, 0x0

    .line 7380
    :cond_0
    :goto_0
    return v3

    .line 7375
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 7376
    .local v1, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-ne v4, p1, :cond_2

    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    if-ne v4, p2, :cond_2

    goto :goto_0
.end method

.method public getSystemSoundEffect()Z
    .locals 1

    .prologue
    .line 2697
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->isSystemSoundEffectEnabled:Z

    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2702
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 2709
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8961
    const/4 v1, 0x0

    .line 8963
    .local v1, "uniqueID":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    const-string v3, "imageuniqueid-value"

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8964
    if-nez v1, :cond_0

    .line 8965
    const-string v2, "CommonEngine"

    const-string v3, "unable to get UniqueID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8971
    :cond_0
    :goto_0
    return-object v1

    .line 8967
    :catch_0
    move-exception v0

    .line 8968
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 8969
    const-string v2, "CommonEngine"

    const-string v3, "unable to get UniqueID(Exception)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 7409
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    .prologue
    .line 7413
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .locals 4

    .prologue
    .line 7417
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected handleBatteryOverheatDuringRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2714
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2715
    const-string v0, "CommonEngine"

    const-string v1, "handleBatteryOverheat : Camera will be terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2718
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 2719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 2723
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStopRecordingThreadComplete()V

    .line 2724
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 2725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 2726
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    .line 2731
    :cond_1
    return-void

    .line 2721
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleDoubleTap(IIZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "touchedOnFace"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2734
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    if-eqz v0, :cond_1

    .line 2735
    const-string v0, "CommonEngine"

    const-string v1, "Stop Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 2737
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 2738
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetZoomValue()V

    .line 2752
    :cond_0
    :goto_0
    return-void

    .line 2741
    :cond_1
    if-eqz p3, :cond_0

    .line 2742
    const-string v0, "CommonEngine"

    const-string v1, "Start Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 2744
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->startFaceZoom(II)V

    .line 2745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 2746
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetZoomValue()V

    .line 2748
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    goto :goto_0
.end method

.method public handleShutterEvent()V
    .locals 2

    .prologue
    .line 2755
    const-string v0, "CommonEngine"

    const-string v1, "handleShutterEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterEvent()V

    .line 2757
    return-void
.end method

.method public handleShutterEventForBurstShot()V
    .locals 2

    .prologue
    .line 2760
    const-string v0, "CommonEngine"

    const-string v1, "handleShutterEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterEventForBurstShot()V

    .line 2762
    return-void
.end method

.method public handleShutterReleaseEvent()V
    .locals 2

    .prologue
    .line 2765
    const-string v0, "CommonEngine"

    const-string v1, "handleShutterReleaseEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterReleaseEvent()V

    .line 2767
    return-void
.end method

.method public handleTimer()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2770
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2785
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2772
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 2775
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 2778
    :pswitch_2
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 2781
    :pswitch_3
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 2770
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleVideoRecordingStarted()V
    .locals 2

    .prologue
    .line 7421
    const-string v0, "CommonEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7422
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStart()V

    .line 7423
    return-void
.end method

.method public hideBaseMenuForDualLiteShotSync()V
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForDualLiteShot()V

    .line 2383
    return-void
.end method

.method public imageStoringCompleted()V
    .locals 2

    .prologue
    .line 5960
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 5961
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v0, :cond_2

    .line 5962
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5963
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showStoryShotAddVoiceMenu(Ljava/lang/String;)V

    .line 5974
    :cond_0
    :goto_0
    return-void

    .line 5964
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 5965
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onStoryshotSaveAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 5968
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V

    goto :goto_0

    .line 5972
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V

    goto :goto_0
.end method

.method public initialize()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2789
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 2791
    .local v0, "camSettings":Lcom/sec/android/app/camera/CameraSettings;
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v4, :cond_1

    .line 2970
    :cond_0
    :goto_0
    return-void

    .line 2794
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2795
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x9

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x12

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2801
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2804
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_6

    .line 2810
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 2822
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2837
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2839
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2841
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2844
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "video_recording_gamma"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "slow_ae"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2847
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "sw-vdis"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2850
    const/4 v3, 0x0

    .line 2851
    .local v3, "pictureWidth":I
    const/4 v2, 0x0

    .line 2852
    .local v2, "pictureHeight":I
    sget v4, Lcom/sec/android/app/camera/CommonEngine;->mDualCamcorderResolution:I

    sparse-switch v4, :sswitch_data_0

    .line 2902
    const/16 v3, 0x1020

    .line 2903
    const/16 v2, 0xc18

    .line 2906
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 2909
    .end local v2    # "pictureHeight":I
    .end local v3    # "pictureWidth":I
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2955
    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->isAutoExposureLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mAeLockSupported:Z

    .line 2956
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->isAutoWhiteBalanceLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mAwbLockSupported:Z

    .line 2958
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2959
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 2961
    :cond_4
    const/16 v4, 0x13

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2963
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2964
    const-string v4, "CommonEngine"

    const-string v5, "setPictureSize for cover camera : 3096x3096"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3096x3096"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2969
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    goto/16 :goto_0

    .line 2812
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2813
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2814
    const-string v4, "4096x2304"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 2817
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2824
    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v1

    .line 2825
    .local v1, "focus":I
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v1, :cond_9

    .line 2826
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 2828
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2854
    .end local v1    # "focus":I
    .restart local v2    # "pictureHeight":I
    .restart local v3    # "pictureWidth":I
    :sswitch_0
    const/16 v3, 0x1020

    .line 2855
    const/16 v2, 0x912

    .line 2856
    goto/16 :goto_3

    .line 2858
    :sswitch_1
    const/16 v3, 0x1020

    .line 2859
    const/16 v2, 0x912

    .line 2860
    goto/16 :goto_3

    .line 2862
    :sswitch_2
    const/16 v3, 0x780

    .line 2863
    const/16 v2, 0x438

    .line 2864
    goto/16 :goto_3

    .line 2866
    :sswitch_3
    const/16 v3, 0x1020

    .line 2867
    const/16 v2, 0xc18

    .line 2868
    goto/16 :goto_3

    .line 2870
    :sswitch_4
    const/16 v3, 0x1020

    .line 2871
    const/16 v2, 0x912

    .line 2872
    goto/16 :goto_3

    .line 2874
    :sswitch_5
    const/16 v3, 0x780

    .line 2875
    const/16 v2, 0x438

    .line 2876
    goto/16 :goto_3

    .line 2878
    :sswitch_6
    const/16 v3, 0x1020

    .line 2879
    const/16 v2, 0xc18

    .line 2880
    goto/16 :goto_3

    .line 2882
    :sswitch_7
    const/16 v3, 0x1020

    .line 2883
    const/16 v2, 0xac0

    .line 2884
    goto/16 :goto_3

    .line 2886
    :sswitch_8
    const/16 v3, 0x1020

    .line 2887
    const/16 v2, 0xc18

    .line 2888
    goto/16 :goto_3

    .line 2890
    :sswitch_9
    const/16 v3, 0x1020

    .line 2891
    const/16 v2, 0xac0

    .line 2892
    goto/16 :goto_3

    .line 2894
    :sswitch_a
    const/16 v3, 0x1020

    .line 2895
    const/16 v2, 0xc18

    .line 2896
    goto/16 :goto_3

    .line 2898
    :sswitch_b
    const/16 v3, 0x1020

    .line 2899
    const/16 v2, 0xc18

    .line 2900
    goto/16 :goto_3

    .line 2911
    .end local v2    # "pictureHeight":I
    .end local v3    # "pictureWidth":I
    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2912
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2913
    const-string v4, "1920x1080"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    .line 2916
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2920
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2924
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x9

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "video_recording_gamma"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "slow_ae"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2928
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "sw-vdis"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2934
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setFrontSensorMirror(I)V

    goto/16 :goto_4

    .line 2852
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_8
        0xd -> :sswitch_1
        0xe -> :sswitch_4
        0xf -> :sswitch_7
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x1f -> :sswitch_3
        0x22 -> :sswitch_6
        0x28 -> :sswitch_0
        0x29 -> :sswitch_9
        0x2a -> :sswitch_2
        0x2c -> :sswitch_5
    .end sparse-switch
.end method

.method public isAeAwbLocked()Z
    .locals 1

    .prologue
    .line 3835
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    return v0
.end method

.method public isAutoFocusing()Z
    .locals 2

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2974
    const/4 v0, 0x1

    .line 2976
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoShotLowLight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6042
    iget v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    if-ne v1, v0, :cond_0

    .line 6045
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstCaptureStarting()Z
    .locals 2

    .prologue
    .line 5988
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 5992
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5993
    :cond_1
    const/4 v0, 0x1

    .line 5996
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 5977
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5982
    :cond_0
    const/4 v0, 0x1

    .line 5984
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinousAFStopped()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    return v0
.end method

.method public isCurrentState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2980
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2981
    const/4 v0, 0x1

    .line 2982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualModeAsyncFirstCapturing()Z
    .locals 1

    .prologue
    .line 6015
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6016
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->isDualModeAsyncFirstCapturing()Z

    move-result v0

    .line 6018
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaceZoomed()Z
    .locals 1

    .prologue
    .line 6000
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    return v0
.end method

.method public isFileExists()Z
    .locals 3

    .prologue
    .line 8777
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCheckFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8778
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8779
    const-string v1, "CommonEngine"

    const-string v2, "User Firmware file exists"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8780
    const/4 v1, 0x1

    .line 8782
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFinishOneShotPreviewCallback()Z
    .locals 1

    .prologue
    .line 6004
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFinishOneShotPreviewCallback:Z

    return v0
.end method

.method public isHalfShutter()Z
    .locals 1

    .prologue
    .line 3948
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    return v0
.end method

.method public isIspVersionHigher()Z
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v5, 0x1

    const/4 v9, 0x7

    const/4 v4, 0x0

    .line 8867
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIspVersionHigher() - FW versionIsp ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FW versionPhone ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8869
    const/4 v1, 0x0

    .line 8870
    .local v1, "versionIspSubstart":Ljava/lang/String;
    const/4 v3, 0x0

    .line 8873
    .local v3, "versionPhoneSubstart":Ljava/lang/String;
    const/4 v0, 0x0

    .line 8874
    .local v0, "versionIspSubend":Ljava/lang/String;
    const/4 v2, 0x0

    .line 8877
    .local v2, "versionPhoneSubend":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8878
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8881
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8882
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 8890
    const-string v6, "[0-9|a-z|A-Z|]*"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8891
    const/4 v2, 0x0

    .line 8893
    :cond_0
    const-string v6, "[0-9|a-z|A-Z|]*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8894
    const/4 v0, 0x0

    .line 8897
    :cond_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 8927
    :cond_2
    :goto_0
    return v4

    .line 8901
    :cond_3
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 8913
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIspVersionHigher() - FW versionIspSubstart ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FW versionPhoneSubstart ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8914
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIspVersionHigher() - FW versionIspSubend ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FW versionPhoneSubend ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8916
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8917
    const-string v6, "CommonEngine"

    const-string v7, "versionIspSubstart is same. check firmware version."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8918
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    .line 8919
    const-string v5, "CommonEngine"

    const-string v6, "versionIspSubend is same or lower. do not update."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8922
    :cond_4
    const-string v4, "CommonEngine"

    const-string v6, "versionIspSubend is higher. update."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 8923
    goto/16 :goto_0

    .line 8926
    :cond_5
    const-string v4, "CommonEngine"

    const-string v6, "versionIspSubstart is different. update."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 8927
    goto/16 :goto_0
.end method

.method public isMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 7544
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 2986
    const/4 v7, 0x0

    .line 2987
    .local v7, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2988
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2990
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2991
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 2992
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2993
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2994
    .local v8, "volumeName":Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2995
    :cond_0
    const/4 v7, 0x1

    .line 2997
    .end local v8    # "volumeName":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2999
    :cond_2
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanning..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    return v7
.end method

.method public isMediarecorderExist()Z
    .locals 1

    .prologue
    .line 8977
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 8978
    const/4 v0, 0x1

    .line 8980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8758
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isFileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8759
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->loadVersionsFromCheckFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8766
    :cond_0
    :goto_0
    return v0

    .line 8762
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isIspVersionHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8763
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOverHeated()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8770
    const-string v2, "sys.siop.curlevel"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8771
    .local v0, "level":I
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverHeated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8773
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 6008
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6009
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->isPanoramaCapturing()Z

    move-result v0

    .line 6011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepareRecording()Z
    .locals 2

    .prologue
    .line 7562
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7563
    :cond_0
    const/4 v0, 0x1

    .line 7565
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 3009
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3010
    const/4 v0, 0x1

    .line 3012
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecorderStarting()Z
    .locals 2

    .prologue
    .line 7569
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7570
    :cond_0
    const/4 v0, 0x1

    .line 7572
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecorderStopting()Z
    .locals 2

    .prologue
    .line 7586
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7587
    const/4 v0, 0x1

    .line 7589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7576
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7582
    :cond_0
    :goto_0
    return v0

    .line 7579
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7582
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleShotBurst()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6034
    iget v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    if-ne v1, v0, :cond_0

    .line 6037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmileDetecting()Z
    .locals 2

    .prologue
    .line 6050
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6051
    const/4 v0, 0x1

    .line 6053
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartingEngine()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3016
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3019
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStartingPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 3023
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3029
    :cond_0
    :goto_0
    return v0

    .line 3026
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3029
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopPreviewPending()Z
    .locals 2

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3035
    const/4 v0, 0x1

    .line 3037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchToCamcorderPreview()Z
    .locals 2

    .prologue
    .line 7548
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7549
    :cond_0
    const/4 v0, 0x1

    .line 7551
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchToCameraPreview()Z
    .locals 2

    .prologue
    .line 7555
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7556
    const/4 v0, 0x1

    .line 7558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 2

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3043
    const/4 v0, 0x1

    .line 3045
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 3049
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 1

    .prologue
    .line 8175
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public loadVersionsFromCheckFile()Z
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/4 v8, 0x0

    .line 8786
    const/4 v4, 0x0

    .line 8787
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 8788
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 8794
    .local v6, "fwInfo":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mCheckFileName:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 8795
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 8801
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 8803
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 8804
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 8817
    if-nez v6, :cond_2

    .line 8818
    :try_start_3
    const-string v9, "CommonEngine"

    const-string v10, "loadVersionsFromCheckFile() - can not get the FW info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 8846
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_0
    :goto_0
    return v8

    .line 8796
    :catch_0
    move-exception v2

    .line 8797
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 8805
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 8806
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 8808
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 8809
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 8810
    :catch_2
    move-exception v3

    .line 8811
    .local v3, "err":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 8842
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 8843
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8844
    const-string v9, "CommonEngine"

    const-string v10, "file reading error"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8822
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_2
    :try_start_8
    const-string v9, "CommonEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadVersionsFromCheckFile() - FW info["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8824
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, " "

    const/4 v10, 0x0

    invoke-direct {v7, v6, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8825
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 8826
    const-string v9, "CommonEngine"

    const-string v10, "invalid FW Info!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 8827
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 8830
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    .line 8831
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    .line 8834
    const-string v9, "CommonEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadVersionsFromCheckFile() , versionIsp length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " versionPhone length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8835
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v12, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v12, :cond_5

    .line 8836
    :cond_4
    const-string v9, "CommonEngine"

    const-string v10, "firmware version length is wrong. cannot read version data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 8837
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 8841
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_5
    const/4 v8, 0x1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 8842
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 8805
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 8796
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1
.end method

.method public lockAEAWB()V
    .locals 2

    .prologue
    .line 3811
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3814
    :cond_0
    :goto_0
    return-void

    .line 3812
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 3813
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public lockAWB()V
    .locals 2

    .prologue
    .line 3823
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3826
    :cond_0
    :goto_0
    return-void

    .line 3824
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAWBLockParameter(Z)V

    .line 3825
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 8
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3053
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3056
    const-string v0, "CommonEngine"

    const-string v1, "capture in progress, setparameters are not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :goto_0
    return-void

    .line 3060
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3203
    :cond_1
    :goto_1
    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 3212
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mFlashMode:I

    goto :goto_0

    .line 3070
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3077
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3078
    const-string v0, "CommonEngine"

    const-string v1, "bust in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3081
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 3082
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3084
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3097
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 3098
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3102
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 3103
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->doEffectSync(I)V

    goto :goto_1

    .line 3105
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3109
    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleDualShotMode(I)V

    goto :goto_1

    .line 3112
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3116
    :sswitch_8
    const/16 v0, 0x27

    if-ne p2, v0, :cond_6

    .line 3117
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, v4, v6}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3118
    :cond_6
    const/16 v0, 0x28

    if-ne p2, v0, :cond_7

    .line 3119
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, v4, v7}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3120
    :cond_7
    const/16 v0, 0x2a

    if-ne p2, v0, :cond_8

    .line 3121
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v4, v1}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3123
    :cond_8
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, v4, v5}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3142
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setRichtonePictureMode(I)V

    goto/16 :goto_1

    .line 3145
    :sswitch_a
    if-ne p2, v3, :cond_9

    .line 3146
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startReceivingLocationUpdates()V

    .line 3147
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setWeatherConnect(Z)V

    goto/16 :goto_1

    .line 3149
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopReceivingLocationUpdates()V

    .line 3150
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/Camera;->setWeatherConnect(Z)V

    goto/16 :goto_1

    .line 3154
    :sswitch_b
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetOnShutterSound(I)V

    goto/16 :goto_1

    .line 3159
    :sswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v4, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v6, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-eq v0, p2, :cond_a

    .line 3165
    const-string v0, "CommonEngine"

    const-string v1, "antishake need preview restart"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPreview()V

    .line 3167
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    .line 3168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    goto/16 :goto_1

    .line 3171
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_1

    .line 3175
    :sswitch_d
    if-ne p2, v4, :cond_b

    .line 3176
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3178
    :cond_b
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/16 v1, 0x6f

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3182
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3185
    :sswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/Camera;->handleWifiDisplayOnRVF(I)V

    .line 3186
    if-eq p2, v3, :cond_c

    if-ne p2, v6, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d

    .line 3187
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShareFormatSelectDialog()V

    .line 3189
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_1

    .line 3190
    if-ne p2, v3, :cond_e

    .line 3191
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "shareshot-hint"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 3193
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "shareshot-hint"

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 3198
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 3199
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->setFaceRetouchLevel(I)V

    goto/16 :goto_1

    .line 3205
    :sswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mStorage:I

    goto/16 :goto_0

    .line 3208
    :sswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mWhiteBalance:I

    goto/16 :goto_0

    .line 3060
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_8
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_3
        0x8 -> :sswitch_5
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_0
        0x12 -> :sswitch_3
        0x14 -> :sswitch_a
        0x15 -> :sswitch_b
        0x16 -> :sswitch_0
        0x22 -> :sswitch_9
        0x27 -> :sswitch_f
        0x2f -> :sswitch_0
        0x30 -> :sswitch_0
        0x47 -> :sswitch_0
        0x51 -> :sswitch_0
        0x55 -> :sswitch_2
        0x58 -> :sswitch_6
        0x59 -> :sswitch_2
        0x64 -> :sswitch_d
        0x65 -> :sswitch_0
        0x66 -> :sswitch_7
        0x67 -> :sswitch_0
        0x6b -> :sswitch_c
        0x6c -> :sswitch_2
        0x6f -> :sswitch_e
        0x74 -> :sswitch_0
        0x76 -> :sswitch_10
    .end sparse-switch

    .line 3203
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_12
        0x16 -> :sswitch_11
        0x6c -> :sswitch_1
    .end sparse-switch
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    .line 7610
    const-string v0, "CommonEngine"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7612
    if-ne p2, v2, :cond_1

    .line 7613
    const-string v0, "CommonEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7615
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCancelVideoRecording()V

    .line 7616
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 7617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    .line 7618
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finishRecordingWithError()V

    .line 7627
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 7628
    :goto_0
    return-void

    .line 7619
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 7620
    const-string v0, "CommonEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7621
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 7622
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    .line 7623
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 7624
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCamcorderRecordingStopSound()V

    goto :goto_0
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 5
    .param p1, "mr"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const v4, 0x7f0c000c

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 7631
    const/16 v0, 0x320

    if-ne p2, v0, :cond_5

    .line 7632
    const-string v0, "CommonEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7634
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    if-eqz v0, :cond_1

    .line 7635
    const-string v0, "CommonEngine"

    const-string v1, "onInfo - already stopping so returned."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7671
    :cond_0
    :goto_0
    return-void

    .line 7638
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->handleRecordingTimerElapsed()I

    .line 7640
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 7641
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0, v4, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7646
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7647
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_0

    .line 7642
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7643
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0c000b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 7649
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    goto :goto_0

    .line 7653
    :cond_5
    const/16 v0, 0x321

    if-ne p2, v0, :cond_7

    .line 7654
    const-string v0, "CommonEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7655
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7656
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 7657
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    .line 7658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 7660
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7661
    :cond_7
    const/16 v0, 0x384

    if-ne p2, v0, :cond_8

    .line 7662
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    goto :goto_0

    .line 7663
    :cond_8
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    .line 7665
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 7666
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7667
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7668
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionTimescale()I

    move-result v0

    mul-int/2addr v0, p3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 3218
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 3219
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3222
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v2, :cond_2

    .line 3223
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3224
    .local v0, "holder":Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_1

    .line 3225
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3226
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetOriginalViewFinderSize()V

    .line 3229
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3230
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3236
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 3239
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 3240
    .local v2, "width":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 3242
    .local v0, "height":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v3, :cond_2

    .line 3243
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3244
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setSize(II)Z

    .line 3246
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 3247
    .local v1, "holder":Landroid/view/SurfaceHolder;
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "surfaceCreate**StartU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    if-eqz v1, :cond_1

    .line 3249
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3250
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 3252
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3254
    .end local v1    # "holder":Landroid/view/SurfaceHolder;
    :cond_2
    return-void
.end method

.method public reduceContinuousFileSequence()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8163
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # operator-- for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$4910(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I

    .line 8164
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # getter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$4900(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 8165
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$4902(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I

    .line 8166
    :cond_0
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7813
    const-string v0, "CommonEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7814
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_2

    .line 7815
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupEmptyFile()V

    .line 7816
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7817
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->unregisterRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)V

    .line 7819
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 7820
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 7821
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 7822
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 7823
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 7824
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 7826
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_3

    .line 7827
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->lock()V

    .line 7829
    :cond_3
    return-void
.end method

.method public removeHideFocusRectMessage()V
    .locals 2

    .prologue
    .line 3350
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3351
    return-void
.end method

.method public resetContinuousFileSequence()V
    .locals 2

    .prologue
    .line 8159
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$4902(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I

    .line 8160
    return-void
.end method

.method public resetOriginalViewFinderSize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5942
    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 5943
    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 5944
    return-void
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    .prologue
    .line 6028
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6029
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->resetPanoramaCapturing()V

    .line 6031
    :cond_0
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x438

    const/4 v8, 0x0

    .line 3354
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPreviewSize()- WH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isSwitchToCamcorderPreview()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3473
    :goto_0
    return-void

    .line 3361
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_f

    .line 3362
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 3363
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v1, :cond_1

    .line 3364
    const-string v4, "CommonEngine"

    const-string v5, "supported preview size is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3368
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-eq v4, v10, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3369
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "dualrecording-hint"

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 3382
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 3383
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v6

    invoke-static {v4, v1, v6, v7}, Lcom/sec/android/app/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    .line 3385
    .local v0, "previewsize":Lcom/sec/android/seccamera/SecCamera$Size;
    if-eqz v0, :cond_4

    .line 3386
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    .line 3387
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    .line 3405
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_8

    .line 3406
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "1920x1080"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 3432
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3433
    iput v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    .line 3434
    iput v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    .line 3435
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPreviewSize for cover camera : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 3445
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v3

    .line 3446
    .local v3, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_6

    .line 3447
    const/4 v2, 0x0

    .line 3448
    .local v2, "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/camera/CommonEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v2

    .line 3449
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v6, v2, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 3452
    .end local v2    # "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_e

    .line 3453
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 3454
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v5, 0x44f

    invoke-virtual {v4, v5, v8, v8}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3456
    :cond_7
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3457
    const-string v4, "CommonEngine"

    const-string v5, "resetPreviewSize()- isCurrentState is INITIALIZING"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3408
    .end local v3    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 3409
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "3264x1836"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "3264x1836"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3411
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_a

    .line 3413
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "1440x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "1440x1080"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3415
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_b

    .line 3416
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "800x450"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3419
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3437
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-nez v4, :cond_5

    .line 3438
    iput v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    .line 3439
    iput v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    .line 3440
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPreviewSize for 1:1 camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_2

    .line 3463
    .restart local v3    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_0

    .line 3465
    :cond_e
    const-string v4, "CommonEngine"

    const-string v5, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3469
    .end local v0    # "previewsize":Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    .end local v3    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_f
    const-string v4, "CommonEngine"

    const-string v5, "resetPreviewSize()- mParameters is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public resetToDefaultSettings()V
    .locals 0

    .prologue
    .line 3476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPreview()V

    .line 3477
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopEngine()V

    .line 3479
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleResetSettings()V

    .line 3481
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartEngine()V

    .line 3482
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->schedulePostInit()V

    .line 3483
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetAllParams()V

    .line 3485
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualEngine()V

    .line 3487
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 3489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    .line 3491
    return-void
.end method

.method public final scheduleAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 3494
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->removeAFmessage()V

    .line 3497
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 3499
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isStartingPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3500
    :cond_0
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoFocus is skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->clearFocusState()V

    .line 3526
    :cond_1
    :goto_0
    return-void

    .line 3505
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isBurstCaptureStarting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isGolfShotCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3509
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 3510
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoFocus - current focus mode is off"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3514
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3518
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 3522
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 3523
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3525
    sput-boolean v2, Lcom/sec/android/app/camera/CommonEngine;->m_bRestartTouchAF:Z

    goto :goto_0
.end method

.method public scheduleAutoNight()V
    .locals 3

    .prologue
    .line 3627
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoNight"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3629
    return-void
.end method

.method public scheduleCamcorderRecordingStartSound()V
    .locals 3

    .prologue
    .line 3642
    const-string v0, "CommonEngine"

    const-string v1, "scheduleCamcorderRecordingStartSound"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3644
    return-void
.end method

.method public scheduleCamcorderRecordingStopSound()V
    .locals 3

    .prologue
    .line 3660
    const-string v0, "CommonEngine"

    const-string v1, "scheduleCamcorderRecordingStopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3662
    return-void
.end method

.method public scheduleCancelVideoRecording()V
    .locals 3

    .prologue
    .line 7862
    const-string v0, "CommonEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7864
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7865
    return-void
.end method

.method public final scheduleChangeParameter(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 3529
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleChangeParameter key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3531
    return-void
.end method

.method public final scheduleDualShotMode()V
    .locals 3

    .prologue
    .line 7912
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7913
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7914
    return-void
.end method

.method public scheduleDualShotMode(I)V
    .locals 3
    .param p1, "isDualModeSync"    # I

    .prologue
    .line 8603
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleDualShotMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8604
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x34

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8605
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setDualSwitch(Z)V

    .line 8606
    return-void
.end method

.method public final scheduleHideCoverCamera()V
    .locals 3

    .prologue
    .line 8049
    const-string v0, "CommonEngine"

    const-string v1, "scheduleHideCoverCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8050
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x39

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8051
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .locals 3

    .prologue
    .line 7868
    const-string v0, "CommonEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7870
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7871
    return-void
.end method

.method public final schedulePostInit()V
    .locals 3

    .prologue
    .line 3534
    const-string v0, "CommonEngine"

    const-string v1, "schedulePostInit"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3536
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 7874
    const-string v0, "CommonEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7876
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7877
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7879
    :cond_0
    return-void
.end method

.method public scheduleProcessBack()V
    .locals 3

    .prologue
    .line 3539
    const-string v0, "CommonEngine"

    const-string v1, "scheduleProcessBack"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3541
    return-void
.end method

.method public final scheduleResetSettings()V
    .locals 3

    .prologue
    .line 3544
    const-string v0, "CommonEngine"

    const-string v1, "scheduleResetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3546
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .locals 3

    .prologue
    .line 7882
    const-string v0, "CommonEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7884
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7885
    return-void
.end method

.method public final scheduleSetAllParams()V
    .locals 3

    .prologue
    .line 3549
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetAllParams"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3552
    return-void
.end method

.method public final scheduleSetEffectOrderForDualCamera()V
    .locals 3

    .prologue
    .line 8031
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetEffectOrderForDualCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8032
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8033
    return-void
.end method

.method public final scheduleSetEffectOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 8627
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetEffectOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8628
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x31

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8629
    return-void
.end method

.method public final scheduleSetMultipleParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 3560
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetMultipleParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3562
    return-void
.end method

.method public scheduleSetOnShutterSound(I)V
    .locals 4
    .param p1, "shuttersound"    # I

    .prologue
    const/16 v3, 0x2e

    .line 6175
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedulesetOnShutterSound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6176
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 6177
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6178
    return-void
.end method

.method public final scheduleSetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3555
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3557
    return-void
.end method

.method public final scheduleSetSingleEffect()V
    .locals 3

    .prologue
    .line 7929
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetSingleEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7930
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7931
    return-void
.end method

.method public final scheduleSetTrackingVisible()V
    .locals 3

    .prologue
    .line 7964
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetTrackingVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7965
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x3a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7966
    return-void
.end method

.method public final scheduleShutterTimer(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 3565
    const-string v0, "CommonEngine"

    const-string v1, "scheduleShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mIsCinepicRecording:Z

    if-eqz v0, :cond_0

    .line 3567
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 3569
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3570
    return-void
.end method

.method public final scheduleStartActionShot()V
    .locals 3

    .prologue
    .line 6057
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6060
    return-void
.end method

.method public final scheduleStartBurstShot()V
    .locals 3

    .prologue
    .line 8062
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8063
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8064
    return-void
.end method

.method public scheduleStartDramaShot()V
    .locals 3

    .prologue
    .line 6105
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDramaShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6107
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6108
    return-void
.end method

.method public final scheduleStartDualCamera()V
    .locals 3

    .prologue
    .line 8011
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8012
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8013
    return-void
.end method

.method public final scheduleStartDualCameraLite()V
    .locals 3

    .prologue
    .line 8016
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualCameraLite"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8017
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x36

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8018
    return-void
.end method

.method public final scheduleStartDualEngine()V
    .locals 3

    .prologue
    .line 7949
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7950
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7951
    return-void
.end method

.method public final scheduleStartDualPreview()V
    .locals 3

    .prologue
    .line 7954
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7955
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7956
    return-void
.end method

.method public final scheduleStartEngine()V
    .locals 3

    .prologue
    .line 3573
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3575
    return-void
.end method

.method public scheduleStartGolfShot()V
    .locals 3

    .prologue
    .line 6111
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartGolfShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x3b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6114
    return-void
.end method

.method public final scheduleStartPanorama()V
    .locals 3

    .prologue
    .line 6063
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6066
    return-void
.end method

.method public final scheduleStartPreview()V
    .locals 3

    .prologue
    .line 3578
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3580
    return-void
.end method

.method public final scheduleStartPreviewDummy()V
    .locals 3

    .prologue
    .line 3583
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3585
    return-void
.end method

.method public final scheduleStartRecordDualPreview()V
    .locals 3

    .prologue
    .line 7959
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartRecordDualPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7960
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7961
    return-void
.end method

.method public scheduleStartSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 6069
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6071
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6078
    :cond_0
    :goto_0
    return-void

    .line 6077
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public scheduleStartVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 7888
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7890
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7891
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7893
    :cond_0
    return-void
.end method

.method public final scheduleStopActionShot()V
    .locals 3

    .prologue
    .line 6081
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6083
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6084
    return-void
.end method

.method public final scheduleStopBurstShot()V
    .locals 3

    .prologue
    .line 8132
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->burstShotStartCompleted()V

    .line 8134
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8135
    return-void
.end method

.method public scheduleStopDramaShot()V
    .locals 3

    .prologue
    .line 6117
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopDramaShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6119
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6120
    return-void
.end method

.method public final scheduleStopDualCamera()V
    .locals 3

    .prologue
    .line 8044
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopDualCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8045
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x27

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8046
    return-void
.end method

.method public final scheduleStopDualCameraLite()V
    .locals 3

    .prologue
    .line 8021
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualCameraLite"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8022
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8023
    return-void
.end method

.method public final scheduleStopEngine()V
    .locals 3

    .prologue
    .line 3588
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3590
    return-void
.end method

.method public final scheduleStopPanorama()V
    .locals 3

    .prologue
    .line 6087
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6089
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6090
    return-void
.end method

.method public final scheduleStopPreview()V
    .locals 3

    .prologue
    .line 3593
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3599
    return-void
.end method

.method public final scheduleStopPreviewDummy()V
    .locals 3

    .prologue
    .line 3602
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3604
    return-void
.end method

.method public scheduleStopSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 6093
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6095
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6102
    :goto_0
    return-void

    .line 6100
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6101
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public scheduleStopVideoRecording()V
    .locals 3

    .prologue
    .line 7896
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7898
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    if-eqz v0, :cond_0

    .line 7899
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopVideoRecording - already stopping so returned."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7904
    :goto_0
    return-void

    .line 7903
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleSwitchCamera()V
    .locals 3

    .prologue
    .line 7907
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7908
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7909
    return-void
.end method

.method public final scheduleSwitchToCamcorderPreview()V
    .locals 3

    .prologue
    .line 3607
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSwitchToCamcorderPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3609
    return-void
.end method

.method public final scheduleSwitchToCameraPreview()V
    .locals 3

    .prologue
    .line 3617
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSwitchToCameraPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3619
    return-void
.end method

.method public final scheduleSwitchToCoverCamcorderPreview()V
    .locals 3

    .prologue
    .line 3613
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSwitchTocOVERCamcorderPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x3c

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3615
    return-void
.end method

.method public final scheduleSwitchToCoverCameraPreview()V
    .locals 3

    .prologue
    .line 3621
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleSwitchToCoverCameraPreview mCameraSettings.isCoverMode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3623
    return-void
.end method

.method public scheduleTakePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 3633
    const-string v0, "CommonEngine"

    const-string v1, "scheduleTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3635
    const-string v0, "CommonEngine"

    const-string v1, "scheduleTakePicture - Now capturing, retun capture request."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    :goto_0
    return-void

    .line 3638
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleWait(I)V
    .locals 3
    .param p1, "milisec"    # I

    .prologue
    .line 3686
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleWait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mili seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3688
    return-void
.end method

.method public final schedulehideBaseMenuForDualLiteShot()V
    .locals 3

    .prologue
    .line 8026
    const-string v0, "CommonEngine"

    const-string v1, "schedulehideBaseMenuForDualLiteShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8027
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8028
    return-void
.end method

.method public final schedulesetSingleEffectSync(I)V
    .locals 4
    .param p1, "modeid"    # I

    .prologue
    .line 7939
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x33

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3, p1}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 7940
    return-void
.end method

.method protected searchLastImageContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 3703
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 3739
    :goto_0
    return-void

    .line 3707
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3708
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3710
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 3711
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3712
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3713
    .local v8, "idIndex":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3715
    .local v7, "dataIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 3716
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    .line 3717
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3718
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3720
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 3721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3724
    .end local v7    # "dataIndex":I
    .end local v8    # "idIndex":I
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    if-eqz v0, :cond_4

    .line 3725
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_3

    .line 3726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3729
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 3730
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    const-wide/16 v4, 0x1e

    invoke-virtual {v0, v9, v4, v5}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3735
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3732
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto :goto_1

    .line 3737
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto/16 :goto_0
.end method

.method protected searchLastVideoContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 3743
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 3776
    :goto_0
    return-void

    .line 3747
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3748
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3750
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 3751
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3752
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3753
    .local v8, "idIndex":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3755
    .local v7, "dataIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 3756
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 3757
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 3758
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3761
    .end local v7    # "dataIndex":I
    .end local v8    # "idIndex":I
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_3

    .line 3762
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 3763
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3766
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 3767
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    const-wide/16 v4, 0x1e

    invoke-virtual {v0, v9, v4, v5}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3772
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3769
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_1

    .line 3774
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public sendHideFocusRectMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 3780
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3781
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3782
    return-void
.end method

.method public setAEAWBLockParameter(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    .line 3795
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAEAWBLockParameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3808
    :cond_0
    :goto_0
    return-void

    .line 3800
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAeLockSupported:Z

    if-eqz v0, :cond_2

    .line 3801
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAutoExposureLock(Z)V

    .line 3802
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    .line 3804
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3806
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    goto :goto_0
.end method

.method public setAWBLockParameter(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    .line 3785
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAWBLockParameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return-void

    .line 3789
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 3790
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto :goto_0
.end method

.method public setAutoLowLight(Z)V
    .locals 2
    .param p1, "night"    # Z

    .prologue
    .line 8715
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8716
    const-string v0, "CommonEngine"

    const-string v1, "setAutoLowLight is not used in cover mode"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8723
    :cond_0
    :goto_0
    return-void

    .line 8720
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onAutoLowLightDetectionChanged(I)V

    .line 8721
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8722
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setAutoLowLight(Z)V

    goto :goto_0
.end method

.method public setAutoShotNight(Z)V
    .locals 5
    .param p1, "night"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6199
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 6213
    :cond_0
    :goto_0
    return-void

    .line 6202
    :cond_1
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoShotNight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6203
    if-eqz p1, :cond_2

    .line 6204
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6205
    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    .line 6206
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 6212
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 6208
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6209
    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    .line 6210
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    goto :goto_1
.end method

.method public setBurstShotStoring()V
    .locals 2

    .prologue
    .line 6123
    const-string v0, "CommonEngine"

    const-string v1, "setBurstShotStoring"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6124
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6125
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->setBurstShotStoring()V

    .line 6127
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation()V
    .locals 8

    .prologue
    .line 3848
    new-instance v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v2}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 3850
    .local v2, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    .line 3851
    .local v1, "id":I
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 3852
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    .line 3857
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 3858
    const/4 v4, 0x0

    .line 3860
    .local v4, "rotation":I
    const/4 v4, 0x1

    .line 3864
    const-string v5, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    const/4 v0, 0x0

    .line 3867
    .local v0, "degrees":I
    packed-switch v4, :pswitch_data_0

    .line 3874
    :goto_1
    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 3875
    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v3, v5, 0x168

    .line 3876
    .local v3, "result":I
    rsub-int v5, v3, 0x168

    rem-int/lit16 v3, v5, 0x168

    .line 3880
    :goto_2
    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    if-eq v5, v3, :cond_1

    .line 3882
    add-int/lit16 v5, v3, 0x168

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    sub-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    .line 3884
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setDisplayOrientation(I)V

    .line 3886
    :cond_1
    const-string v5, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientation degrees is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " info.orientation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    return-void

    .line 3853
    .end local v0    # "degrees":I
    .end local v3    # "result":I
    .end local v4    # "rotation":I
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 3854
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    goto/16 :goto_0

    .line 3868
    .restart local v0    # "degrees":I
    .restart local v4    # "rotation":I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3869
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 3870
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    .line 3871
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 3878
    :cond_3
    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v3, v5, 0x168

    .restart local v3    # "result":I
    goto :goto_2

    .line 3867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCoverModeDisplayOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3890
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    .line 3892
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3893
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setDisplayOrientation(I)V

    .line 3895
    :cond_0
    return-void
.end method

.method public setDualEffectSync(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    .line 8473
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 8474
    const/16 v0, 0xc8

    .line 8475
    .local v0, "dualEffectBaseOffset":I
    const/4 v1, 0x2

    .line 8476
    .local v1, "mEffectID":I
    packed-switch p1, :pswitch_data_0

    .line 8514
    :goto_0
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualEffectSync : mEffectID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8515
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setEffectMode(I)V

    .line 8516
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8517
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8518
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8519
    const-string v2, "CommonEngine"

    const-string v3, "setDualEffectSync : fail to load external filters"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8534
    .end local v0    # "dualEffectBaseOffset":I
    .end local v1    # "mEffectID":I
    :cond_0
    :goto_1
    return-void

    .line 8478
    .restart local v0    # "dualEffectBaseOffset":I
    .restart local v1    # "mEffectID":I
    :pswitch_0
    const/4 v1, 0x0

    .line 8479
    goto :goto_0

    .line 8481
    :pswitch_1
    const/4 v1, 0x1

    .line 8482
    goto :goto_0

    .line 8484
    :pswitch_2
    const/4 v1, 0x2

    .line 8485
    goto :goto_0

    .line 8487
    :pswitch_3
    const/4 v1, 0x3

    .line 8488
    goto :goto_0

    .line 8490
    :pswitch_4
    const/4 v1, 0x4

    .line 8491
    goto :goto_0

    .line 8493
    :pswitch_5
    const/4 v1, 0x5

    .line 8494
    goto :goto_0

    .line 8496
    :pswitch_6
    const/4 v1, 0x6

    .line 8497
    goto :goto_0

    .line 8499
    :pswitch_7
    const/4 v1, 0x7

    .line 8500
    goto :goto_0

    .line 8502
    :pswitch_8
    const/16 v1, 0x8

    .line 8503
    goto :goto_0

    .line 8505
    :pswitch_9
    const/16 v1, 0x9

    .line 8506
    goto :goto_0

    .line 8508
    :pswitch_a
    const/16 v1, 0xa

    .line 8509
    goto :goto_0

    .line 8511
    :pswitch_b
    const/16 v1, 0xc

    goto :goto_0

    .line 8523
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterForSet(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setEffect(Ljava/lang/String;)V

    goto :goto_1

    .line 8525
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setEffect(I)V

    .line 8526
    const/16 v2, 0x33

    if-ne p1, v2, :cond_0

    .line 8527
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isTrackingStart()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8528
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    goto :goto_1

    .line 8530
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    goto :goto_1

    .line 8476
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setDualShotModeSync(I)V
    .locals 1
    .param p1, "isDualModeSync"    # I

    .prologue
    .line 8610
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8611
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setDualShotMode(I)V

    .line 8612
    :cond_0
    return-void
.end method

.method public setDualTrackingCoordinate(Z)V
    .locals 3
    .param p1, "isDualTrackingCoordi"    # Z

    .prologue
    .line 8585
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualTrackingCoordinate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8586
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8587
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setDualTrackingCoordinate(Z)V

    .line 8588
    :cond_0
    return-void
.end method

.method public setDualTrackingMode(Z)V
    .locals 1
    .param p1, "isDualTrackingMode"    # Z

    .prologue
    .line 8592
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8593
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setDualTrackingMode(Z)V

    .line 8594
    :cond_0
    return-void
.end method

.method public setEffectLayerOrderSync(Z)V
    .locals 1
    .param p1, "isRearGoesBottom"    # Z

    .prologue
    .line 8598
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8599
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectLayerOrder(Z)V

    .line 8600
    :cond_0
    return-void
.end method

.method public setEffectVisibleForRecording(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 8622
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8623
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectVisibleForRecording(Z)V

    .line 8624
    :cond_0
    return-void
.end method

.method public setEffectVisibleSync(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 8616
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8617
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectVisible(Z)V

    .line 8618
    :cond_0
    return-void
.end method

.method public setExternalFilter(Z)V
    .locals 1
    .param p1, "option"    # Z

    .prologue
    .line 8649
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8650
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setExternalEffect(Z)V

    .line 8652
    :cond_0
    return-void
.end method

.method public setFaceRetouchLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 6141
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceRetouchLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6143
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setBeautyEffect(Z)V

    .line 6144
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    mul-int/lit8 v1, p1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFaceRetouchLevel(I)V

    .line 6146
    :cond_0
    return-void

    .line 6143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlashOff()V
    .locals 2

    .prologue
    .line 6437
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    .line 6438
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6439
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6440
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6443
    :cond_0
    return-void
.end method

.method public setFocusModeAuto()V
    .locals 3

    .prologue
    .line 3920
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3921
    const-string v0, "CommonEngine"

    const-string v1, "Ignore setFocusModeAuto"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    :goto_0
    return-void

    .line 3924
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public setFocusParameter(I)V
    .locals 3
    .param p1, "focus"    # I

    .prologue
    const/4 v2, 0x5

    .line 3897
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3917
    :cond_0
    :goto_0
    return-void

    .line 3901
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result p1

    .line 3903
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3904
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3907
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3916
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 3910
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3913
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFrontSensorMirror(I)V
    .locals 3
    .param p1, "flip"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3952
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 3953
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 3954
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3955
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectSaveAsFlipped(I)V

    .line 3958
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3953
    goto :goto_0
.end method

.method public setGolfShotFileString(Ljava/lang/String;)V
    .locals 0
    .param p1, "golfString"    # Ljava/lang/String;

    .prologue
    .line 8986
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    .line 8987
    return-void
.end method

.method public setGroupID(I)V
    .locals 0
    .param p1, "groupId"    # I

    .prologue
    .line 3961
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mGroupId:I

    .line 3962
    return-void
.end method

.method public setHDMICableConnected(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3967
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHDMICableConnected. connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_1

    .line 3970
    const-string v2, "CommonEngine"

    const-string v3, "Recording is in progrss"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setHDMICableConnected(I)V

    .line 3981
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 3971
    goto :goto_0

    .line 3975
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_2

    .line 3976
    const-string v0, "CommonEngine"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3980
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v3, 0x461

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setHalfShutter(Z)V
    .locals 0
    .param p1, "halfShutter"    # Z

    .prologue
    .line 3944
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    .line 3945
    return-void
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .locals 3
    .param p1, "chkIsVideoCaptureIntent"    # Z

    .prologue
    .line 8169
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    .line 8170
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoCaptureIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8171
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public setLandscapeActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 3990
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLandscapeActive:Z

    .line 3991
    return-void
.end method

.method public setLastCapturedFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4002
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 4003
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3994
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 3995
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3998
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 3999
    return-void
.end method

.method public setLightPipShotCount(I)V
    .locals 0
    .param p1, "bLightPipShotCount"    # I

    .prologue
    .line 4287
    sput p1, Lcom/sec/android/app/camera/CommonEngine;->mLightPipShotCount:I

    .line 4288
    return-void
.end method

.method public setLiveBeautyMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 6130
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDevice - setLiveBeautyMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6131
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6132
    if-nez p1, :cond_1

    .line 6133
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->setBeautyEffect(Z)V

    .line 6138
    :cond_0
    :goto_0
    return-void

    .line 6134
    :cond_1
    if-ne p1, v3, :cond_0

    .line 6135
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setBeautyEffect(Z)V

    goto :goto_0
.end method

.method public setLowLightShot(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 6149
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDevice - setLowLightShot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6150
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6151
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setLowLightShot(I)V

    .line 6153
    :cond_0
    return-void
.end method

.method public final setOnFacePositionChangedListener(Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    .line 777
    return-void
.end method

.method public final setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    .line 787
    return-void
.end method

.method public final setOnTimerEventListener(Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

    .prologue
    .line 4010
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

    .line 4011
    return-void
.end method

.method public setOrientationAndSendItToFramework()V
    .locals 4

    .prologue
    .line 4014
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 4015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4016
    .local v0, "rotation":I
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientationAndSendItToFramework - rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 4019
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 4020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4021
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setWeather(I)V

    .line 4022
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setCityId(J)V

    .line 4026
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_1

    .line 4027
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 4029
    :cond_1
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 4032
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 4033
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$4;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CommonEngine$4;-><init>(Lcom/sec/android/app/camera/CommonEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 4061
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 4062
    return-void
.end method

.method protected setOrientationOnTake(I)V
    .locals 0
    .param p1, "orientationOnTake"    # I

    .prologue
    .line 4065
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationOnTake:I

    .line 4066
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 8997
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, p1}, Lcom/sec/android/seccamera/SecCamera;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9002
    :goto_0
    return-void

    .line 8998
    :catch_0
    move-exception v0

    .line 9000
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPanoramaLowResolutionData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 8179
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaLowResolutionData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8181
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 8182
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8184
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 8185
    return-void
.end method

.method public setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    .prologue
    .line 4381
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    .line 4382
    return-void
.end method

.method public setRichtonePictureMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3985
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setPictureMode(I)V

    .line 3987
    :cond_0
    return-void
.end method

.method public final setShutterSound()V
    .locals 2

    .prologue
    .line 5685
    const-string v0, "CommonEngine"

    const-string v1, "setShutterSound"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5686
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5687
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startShutterSound(Z)V

    .line 5690
    :goto_0
    return-void

    .line 5689
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startShutterSound(Z)V

    goto :goto_0
.end method

.method public setSingleEffectSync(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    const/4 v4, 0x0

    .line 8436
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 8437
    const/16 v0, 0x190

    .line 8438
    .local v0, "singleEffectBaseOffset":I
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSingleEffectSync : effectId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8440
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 8442
    const-string v1, "CommonEngine"

    const-string v2, "setSingleEffectSync: not changing effect because the MediaRecorder is running"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8470
    .end local v0    # "singleEffectBaseOffset":I
    :cond_0
    :goto_0
    return-void

    .line 8446
    .restart local v0    # "singleEffectBaseOffset":I
    :cond_1
    if-nez p1, :cond_3

    .line 8447
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v4}, Lcom/sec/android/seccamera/SecCamera;->setEffectMode(I)V

    .line 8452
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8453
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8454
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8456
    :cond_2
    const-string v1, "CommonEngine"

    const-string v2, "setSingleEffectSync : fail to load external filters"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8457
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_0

    .line 8449
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffectMode(I)V

    goto :goto_1

    .line 8461
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterForSet(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffect(Ljava/lang/String;)V

    .line 8467
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffectSaveAsFlipped(I)V

    goto :goto_0

    .line 8463
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    add-int/lit16 v2, p1, 0x190

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffect(I)V

    goto :goto_2
.end method

.method public setSingleShotBurst(Z)V
    .locals 6
    .param p1, "burst"    # Z

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6181
    if-eqz p1, :cond_0

    .line 6182
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6183
    iput v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    .line 6185
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 6187
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6196
    :goto_0
    return-void

    .line 6189
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6190
    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    .line 6191
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 6193
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 4086
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchAutoFocusActive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTouchAutoFocusActive:Z

    .line 4092
    return-void
.end method

.method public setTouchFocusPosition(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x44fa0000    # 2000.0f

    const/high16 v10, 0x447a0000    # 1000.0f

    const/4 v9, 0x0

    .line 4095
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v6, :cond_1

    .line 4134
    :cond_0
    :goto_0
    return-void

    .line 4100
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 4101
    .local v1, "focusWidth":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 4102
    .local v0, "focusHeight":I
    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 4103
    .local v5, "width":I
    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 4105
    .local v2, "height":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_2

    .line 4106
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    .line 4107
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4110
    :cond_2
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p1, v6

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/Util;->clamp(III)I

    move-result v3

    .line 4111
    .local v3, "left":I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    sub-int v7, v2, v0

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/Util;->clamp(III)I

    move-result v4

    .line 4113
    .local v4, "top":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 4114
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v4

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 4115
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v3, v1

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 4116
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v4, v0

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 4126
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4131
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 4133
    sput-boolean v12, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    goto/16 :goto_0
.end method

.method public setUsePreviewCallback(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "format"    # I

    .prologue
    .line 8710
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8711
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->setUsePreviewCallback(ZI)V

    .line 8712
    :cond_0
    return-void
.end method

.method public smileDetectionCompleted()V
    .locals 2

    .prologue
    .line 6236
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6237
    return-void
.end method

.method public startCancelAutoFocusTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 623
    return-void
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 3929
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3930
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startContinuousAF()V

    .line 3931
    :cond_0
    return-void
.end method

.method public startHideFaceRectTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 816
    return-void
.end method

.method public startResetTouchFocusTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 614
    return-void
.end method

.method public startTouchAutoFocus()V
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 4147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    .line 4148
    return-void
.end method

.method public startingPreviewCompleted()V
    .locals 1

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onStartingPreviewCompleted()V

    .line 4138
    return-void
.end method

.method public stopCancelAutoFocusTimer()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 627
    return-void
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 3934
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3935
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopContinuousAF()V

    .line 3936
    :cond_0
    return-void
.end method

.method public stopDualModeShot()V
    .locals 2

    .prologue
    .line 3939
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3940
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startDualModeAsyncShot(Z)V

    .line 3941
    :cond_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 6266
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 6280
    :cond_0
    :goto_0
    return-void

    .line 6268
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 6270
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 6274
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6278
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 6279
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    goto :goto_0

    .line 6275
    :catch_0
    move-exception v0

    .line 6276
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CommonEngine"

    const-string v2, "stopFaceDetection failed."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopFaceZoom()V
    .locals 1

    .prologue
    .line 6283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 6284
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 6285
    return-void
.end method

.method public stopHideFaceRectTimer()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    return-void
.end method

.method public stopLongTouchAutoFocus()V
    .locals 1

    .prologue
    .line 6288
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6289
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopTouchAutoFocus()V

    .line 6291
    :cond_0
    return-void
.end method

.method public stopResetTouchFocusTimer()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 4151
    const-string v0, "CommonEngine"

    const-string v1, "stopTouchAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 4155
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 4179
    :cond_0
    :goto_0
    return-void

    .line 4159
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4160
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 4163
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4167
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setFocusParameter(I)V

    .line 4177
    :goto_1
    sput-boolean v3, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    .line 4178
    sput-boolean v3, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0

    .line 4170
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4171
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4174
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4182
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOriginalViewFinderWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOriginalViewFinderHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreate**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    if-ne v0, p4, :cond_0

    .line 4223
    :goto_0
    return-void

    .line 4188
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 4192
    :cond_1
    iput p3, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 4193
    iput p4, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 4195
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 4197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetPreviewSize()V

    .line 4199
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 4200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 4213
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_3

    .line 4214
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 4216
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 4217
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    .line 4218
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 4219
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartRecordDualPreview()V

    .line 4220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetTrackingVisible()V

    .line 4222
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V

    goto :goto_0

    .line 4201
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    .line 4203
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 4204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    goto :goto_1

    .line 4207
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 4209
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 4226
    const-string v0, "CommonEngine"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4229
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 4230
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 4233
    const-string v0, "CommonEngine"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4237
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 4238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4240
    :cond_1
    return-void
.end method

.method public switchToBack()V
    .locals 4

    .prologue
    .line 4243
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToBackCamera - setSelfMode - SELF_OFF, setCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 4245
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->updateSettingsWhenSwitchCamera()V

    .line 4246
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->checkFlashRestriction()V

    .line 4248
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getDualSwitch()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4249
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    .line 4250
    .local v0, "resolutionId":I
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEffectMenuSelect resolutionID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 4252
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 4257
    .end local v0    # "resolutionId":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4258
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4260
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4261
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4263
    :cond_2
    return-void

    .line 4253
    .restart local v0    # "resolutionId":I
    :cond_3
    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 4254
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto :goto_0
.end method

.method public switchToFront()V
    .locals 3

    .prologue
    .line 4266
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToFrontCamera - setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 4272
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetZoomValue()V

    .line 4273
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateSettingsWhenSwitchCamera()V

    .line 4274
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 4275
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 4277
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4278
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 4280
    :cond_0
    return-void
.end method

.method public terminateBurstShot()V
    .locals 2

    .prologue
    .line 6294
    const-string v0, "CommonEngine"

    const-string v1, "terminateBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6295
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6296
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->terminateBurstShot()V

    .line 6298
    :cond_0
    return-void
.end method

.method public unlockAEAWB()V
    .locals 2

    .prologue
    .line 3817
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3820
    :cond_0
    :goto_0
    return-void

    .line 3818
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 3819
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public unlockAWB()V
    .locals 2

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3832
    :cond_0
    :goto_0
    return-void

    .line 3830
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAWBLockParameter(Z)V

    .line 3831
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public updateFocusIndicator()V
    .locals 2

    .prologue
    .line 4295
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    if-eqz v0, :cond_0

    .line 4296
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;->onFocusStateChanged(I)V

    .line 4298
    :cond_0
    return-void
.end method

.method public updateStorage()V
    .locals 2

    .prologue
    .line 4291
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mStorage:I

    .line 4292
    return-void
.end method

.method public waitForCurrentPictureSaving()V
    .locals 1

    .prologue
    .line 4302
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4303
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4308
    :cond_0
    :goto_0
    return-void

    .line 4305
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForEngineStartingThread()V
    .locals 1

    .prologue
    .line 4312
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4313
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4319
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4320
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 4322
    :cond_1
    return-void

    .line 4315
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForLastFileToSync()V
    .locals 6

    .prologue
    .line 4325
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 4338
    :goto_0
    return-void

    .line 4329
    :cond_0
    :try_start_0
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 4331
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 4332
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4333
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 4334
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4335
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4336
    .local v0, "e":Ljava/io/SyncFailedException;
    invoke-virtual {v0}, Ljava/io/SyncFailedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitForPanoramaStartThreadComplete()V
    .locals 2

    .prologue
    .line 4351
    const-string v0, "CommonEngine"

    const-string v1, "waitForPanoramaStartThreadComplete - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4354
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4359
    :cond_0
    :goto_0
    const-string v0, "CommonEngine"

    const-string v1, "waitForPanoramaStartThreadComplete - end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    return-void

    .line 4356
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStartPreviewThreadComplete()V
    .locals 1

    .prologue
    .line 4342
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4343
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4348
    :cond_0
    :goto_0
    return-void

    .line 4345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 1

    .prologue
    .line 8413
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 8414
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 8416
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 8417
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8422
    :cond_1
    :goto_0
    return-void

    .line 8419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStopRecordingThreadComplete()V
    .locals 2

    .prologue
    .line 8426
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 8427
    const-string v0, "CommonEngine"

    const-string v1, "waitForStopRecordingThreadComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8428
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8433
    :cond_0
    :goto_0
    return-void

    .line 8430
    :catch_0
    move-exception v0

    goto :goto_0
.end method
