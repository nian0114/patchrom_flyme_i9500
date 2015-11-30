.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field public static final BASE_MENU_WIDTH:I

.field private static final COVERMODE_CLOSE_BUTTON_POS_X:I

.field private static final COVERMODE_CLOSE_BUTTON_POS_Y:I

.field private static final COVERMODE_CLOSE_CAMERA:I = -0x1

.field private static final COVERMODE_FLASH_BUTTON_POS_X:I

.field private static final COVERMODE_FLASH_BUTTON_POS_Y:I

.field private static final COVERMODE_GALLERY_GUIDE_POPUP_HEIGHT:I

.field private static final COVERMODE_GALLERY_GUIDE_POPUP_POS_X:I

.field private static final COVERMODE_GALLERY_GUIDE_POPUP_POS_Y:I

.field private static final COVERMODE_GALLERY_GUIDE_POPUP_WIDTH:I

.field private static final COVERMODE_GALLERY_GUIDE_TEXT_FONT_SIZE:I

.field private static final COVERMODE_GALLERY_GUIDE_TEXT_HEIGHT:I

.field private static final COVERMODE_GALLERY_GUIDE_TEXT_POS_X:I

.field private static final COVERMODE_GALLERY_GUIDE_TEXT_POS_Y:I

.field private static final COVERMODE_GALLERY_GUIDE_TEXT_WIDTH:I

.field private static final COVERMODE_RECORDING_FLASH_BUTTON_POS_X:I

.field private static final COVERMODE_RECORDING_FLASH_BUTTON_POS_Y:I

.field private static final COVERMODE_RECORDING_SHUTTER_BUTTON_POS_X:I

.field private static final COVERMODE_RECORDING_SHUTTER_BUTTON_POS_Y:I

.field private static final COVERMODE_RECORDING_THUMBNAIL_BUTTON_OFFSET_X:I

.field private static final COVERMODE_RECORDING_THUMBNAIL_BUTTON_OFFSET_Y:I

.field private static final COVERMODE_RECORD_BUTTON_POS_X:I

.field private static final COVERMODE_RECORD_BUTTON_POS_Y:I

.field private static final COVERMODE_SHUTTER_BUTTON_ICON_POS_X:I

.field private static final COVERMODE_SHUTTER_BUTTON_ICON_POS_Y:I

.field private static final COVERMODE_SHUTTER_BUTTON_POS_X:I

.field private static final COVERMODE_SHUTTER_BUTTON_POS_Y:I

.field private static final COVERMODE_THUMBNAIL_BUTTON_OFFSET_X:I

.field private static final COVERMODE_THUMBNAIL_BUTTON_OFFSET_Y:I

.field private static final DUAL_BUTTON_POS_X:I

.field private static final DUAL_BUTTON_POS_Y:I

.field private static final EFFECT_BUTTON_POS_X:I

.field private static final EFFECT_BUTTON_POS_Y:I

.field private static final EXT_BUTTON_HEIGHT:I

.field private static final EXT_BUTTON_POS_X:I

.field private static final EXT_BUTTON_POS_Y:I

.field private static final EXT_BUTTON_WIDTH:I

.field private static final EXT_ICON_ANIMATION_DURATION:I = 0x64

.field private static final EXT_ICON_POS_X:I

.field private static final EXT_ICON_POS_Y:I

.field private static final EXT_TEXT_POS_DOWNLOAD_X:I

.field private static final EXT_TEXT_POS_PRELOAD_X:I

.field private static final EXT_TEXT_SIZE:I

.field private static final GROUP_PLAY_BUTTON:I = 0x0

.field public static final ITEM_EFFECT_WIDTH:I

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final LIVE_BEAUTY_FACE_BUTTON_POS_X:I

.field private static final LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

.field public static final MODE_BUTTON_FONT_SIZE:I

.field public static final MODE_BUTTON_SHADOW_COLOR:I

.field public static final MODE_BUTTON_SHADOW_OFFSET_X:I = 0x0

.field public static final MODE_BUTTON_SHADOW_OFFSET_Y:I = -0x2

.field public static final MODE_BUTTON_TEXT_COLOR:I

.field private static final QUICKSETTING_BUTTON_POS_X:I

.field private static final QUICKSETTING_BUTTON_POS_Y:I

.field public static final QUICKSETTING_ITEM_INTERVAL:I

.field public static final QUICKSETTING_MENU_BOX_WIDTH:I

.field public static final QUICKSETTING_MENU_ITEM_WIDTH:I

.field private static final RECORDING_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final SEPARATOR_OFFSET_X:I

.field private static final SEPARATOR_POS_X:I

.field private static final SEPARATOR_POS_Y:I

.field private static final SETTING_BUTTON_PADDING_X:I

.field private static final SETTING_BUTTON_POS_X:I

.field private static final SETTING_BUTTON_POS_Y:I

.field private static final SHOOTINGMODE_BUTTON_PADDINGS:I

.field private static final SHOOTINGMODE_BUTTON_POS_X:I

.field private static final SHOOTINGMODE_BUTTON_POS_Y:I

.field private static final SHOOTINGMODE_BUTTON_TEXT_POS_X:I

.field private static final SHOOTINGMODE_BUTTON_TEXT_POS_Y:I

.field private static final SHUTTER_ANIMATION_IMAGE_POS_X:I

.field private static final SHUTTER_ANIMATION_IMAGE_POS_Y:I

.field private static final SHUTTER_BUTTON_ICON_POS_X:I

.field private static final SHUTTER_BUTTON_ICON_POS_Y:I

.field private static final SHUTTER_BUTTON_POS_X:I

.field private static final SHUTTER_BUTTON_POS_Y:I

.field private static final SWITCHCAMERA_BUTTON_POS_X:I

.field private static final SWITCHCAMERA_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraBaseMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I

.field private static final THUMBNAIL_IMAGE_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_WIDTH:I


# instance fields
.field private mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field public mCameraEnterKeyReleased:Z

.field private mChkBaseMenuItemsShow:Z

.field private mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mCoverModeRecordButton:Lcom/sec/android/glview/TwGLButton;

.field private mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

.field private mDimState:Z

.field private mDualModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mEffectButton:Lcom/sec/android/glview/TwGLButton;

.field private mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

.field private mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mExtDownloadIcon:Lcom/sec/android/glview/TwGLImage;

.field private mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

.field private mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mExtPreloadIcon:Lcom/sec/android/glview/TwGLImage;

.field private mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

.field private mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mGalleryGuideText:Lcom/sec/android/glview/TwGLText;

.field public mIsEffectMenuOpen:Z

.field private mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

.field private mModeTextDimImageResId:I

.field private mModeTextImageResId:I

.field private mModeTextPressImageResId:I

.field private mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

.field private mRecordingButton:Lcom/sec/android/glview/TwGLButton;

.field private mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

.field private mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterButtonForSoundshotGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

.field private mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

.field private mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailTouch:Z

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTouchUpX:I

.field private mTouchUpY:I

.field private menu:Lcom/sec/android/app/camera/MenuBase;

.field private menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private menuid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f0a000b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->BASE_MENU_WIDTH:I

    .line 63
    const v0, 0x7f0a000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    .line 64
    const v0, 0x7f0a000e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_EFFECT_WIDTH:I

    .line 65
    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    .line 67
    const v0, 0x7f0a001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_X:I

    .line 68
    const v0, 0x7f0a001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_Y:I

    .line 70
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->BASE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RIGHT_SIDE_MENU_POS_X:I

    .line 71
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RIGHT_SIDE_MENU_POS_X:I

    const v1, 0x7f0a001a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 72
    const v0, 0x7f0a001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 73
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    const v1, 0x7f0a001e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_X:I

    .line 74
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    const v1, 0x7f0a001f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_Y:I

    .line 75
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RIGHT_SIDE_MENU_POS_X:I

    const v1, 0x7f0a0020

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    .line 76
    const v0, 0x7f0a0021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    .line 77
    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_TEXT_POS_X:I

    .line 78
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_TEXT_POS_Y:I

    .line 81
    const v0, 0x7f0a0091

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_PADDINGS:I

    .line 82
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RIGHT_SIDE_MENU_POS_X:I

    const v1, 0x7f0a0026

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 83
    const v0, 0x7f0a0027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 85
    const v0, 0x7f0a0028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_X:I

    .line 86
    const v0, 0x7f0a0029

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_Y:I

    .line 87
    const v0, 0x7f0a002a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->DUAL_BUTTON_POS_X:I

    .line 88
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_Y:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->DUAL_BUTTON_POS_Y:I

    .line 89
    const v0, 0x7f0a002c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->QUICKSETTING_BUTTON_POS_X:I

    .line 90
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_Y:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->QUICKSETTING_BUTTON_POS_Y:I

    .line 91
    const v0, 0x7f0a0014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SETTING_BUTTON_POS_X:I

    .line 92
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_Y:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SETTING_BUTTON_POS_Y:I

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SETTING_BUTTON_PADDING_X:I

    .line 94
    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_POS_X:I

    .line 95
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_Y:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_POS_Y:I

    .line 96
    const v0, 0x7f0a0034

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_OFFSET_X:I

    .line 97
    const v0, 0x7f0a0035

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 98
    const v0, 0x7f0a0036

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 99
    const v0, 0x7f0a019b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_IMAGE_WIDTH:I

    .line 100
    const v0, 0x7f0a019c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 102
    const v0, 0x7f0a01df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->QUICKSETTING_ITEM_INTERVAL:I

    .line 103
    const v0, 0x7f0a01dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->QUICKSETTING_MENU_ITEM_WIDTH:I

    .line 104
    const v0, 0x7f0a01e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->QUICKSETTING_MENU_BOX_WIDTH:I

    .line 106
    const v0, 0x7f0a0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EFFECT_BUTTON_POS_X:I

    .line 107
    const v0, 0x7f0a0038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EFFECT_BUTTON_POS_Y:I

    .line 110
    const v0, 0x7f09000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->MODE_BUTTON_TEXT_COLOR:I

    .line 111
    const v0, 0x7f090010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->MODE_BUTTON_SHADOW_COLOR:I

    .line 114
    const v0, 0x7f0b0047

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->MODE_BUTTON_FONT_SIZE:I

    .line 116
    const v0, 0x7f0a003d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_X:I

    .line 117
    const v0, 0x7f0a003e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

    .line 123
    const v0, 0x7f0a0040

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    .line 124
    const v0, 0x7f0a0041

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    .line 125
    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    .line 126
    const v0, 0x7f0a0043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    .line 127
    const v0, 0x7f0a0044

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_TEXT_SIZE:I

    .line 128
    const v0, 0x7f0a0045

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_TEXT_POS_DOWNLOAD_X:I

    .line 129
    const v0, 0x7f0a0046

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_TEXT_POS_PRELOAD_X:I

    .line 130
    const v0, 0x7f0a0047

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_ICON_POS_X:I

    .line 131
    const v0, 0x7f0a0048

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_ICON_POS_Y:I

    .line 133
    const v0, 0x7f0a03f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_X:I

    .line 134
    const v0, 0x7f0a03fa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_Y:I

    .line 135
    const v0, 0x7f0a03fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORDING_SHUTTER_BUTTON_POS_X:I

    .line 136
    const v0, 0x7f0a03fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORDING_SHUTTER_BUTTON_POS_Y:I

    .line 139
    const v0, 0x7f0a0410

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORD_BUTTON_POS_X:I

    .line 140
    const v0, 0x7f0a0411

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORD_BUTTON_POS_Y:I

    .line 141
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_X:I

    const v1, 0x7f0a03fd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_ICON_POS_X:I

    .line 142
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_Y:I

    const v1, 0x7f0a03fe

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_ICON_POS_Y:I

    .line 143
    const v0, 0x7f0a03ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_X:I

    .line 144
    const v0, 0x7f0a0400

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_Y:I

    .line 145
    const v0, 0x7f0a0401

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_X:I

    .line 146
    const v0, 0x7f0a0402

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_Y:I

    .line 147
    const v0, 0x7f0a0646

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORDING_FLASH_BUTTON_POS_X:I

    .line 148
    const v0, 0x7f0a0647

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORDING_FLASH_BUTTON_POS_Y:I

    .line 149
    const v0, 0x7f0a0403

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_OFFSET_X:I

    .line 150
    const v0, 0x7f0a0404

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_OFFSET_Y:I

    .line 151
    const v0, 0x7f0a0405

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORDING_THUMBNAIL_BUTTON_OFFSET_X:I

    .line 152
    const v0, 0x7f0a0406

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_RECORDING_THUMBNAIL_BUTTON_OFFSET_Y:I

    .line 154
    const v0, 0x7f0a0408

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_POS_X:I

    .line 155
    const v0, 0x7f0a0409

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_POS_Y:I

    .line 156
    const v0, 0x7f0a040a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_WIDTH:I

    .line 157
    const v0, 0x7f0a040b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_HEIGHT:I

    .line 158
    const v0, 0x7f0a040c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_POS_X:I

    .line 159
    const v0, 0x7f0a040d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_POS_Y:I

    .line 160
    const v0, 0x7f0a040e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_WIDTH:I

    .line 161
    const v0, 0x7f0a040f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_HEIGHT:I

    .line 162
    const v0, 0x7f0b002e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 235
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 213
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 214
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 215
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    .line 216
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    .line 217
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 221
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mTouchDownX:I

    .line 222
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mTouchDownY:I

    .line 223
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mTouchUpX:I

    .line 224
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mTouchUpY:I

    .line 226
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailTouch:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 231
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .line 240
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mVisibility:Z

    .line 242
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setCaptureEnabled(Z)V

    .line 243
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setTouchHandled(Z)V

    .line 245
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 44
    .param p1, "parent"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2, "viewId"    # I

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_0

    .line 250
    const-string v2, "TwGLCameraBaseMenu"

    const-string v3, "mActivityContext is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 256
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EFFECT_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EFFECT_BUTTON_POS_Y:I

    int-to-float v5, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_EFFECT_WIDTH:I

    int-to-float v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 260
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 261
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020030

    const v7, 0x7f020032

    const v8, 0x7f020032

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 272
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020034

    const/4 v7, 0x0

    const v8, 0x7f020035

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 287
    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_Y:I

    int-to-float v5, v5

    const v9, 0x7f0200c1

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 290
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020039

    const v7, 0x7f02003d

    const v8, 0x7f02003d

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 298
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getCurrentLocaleModeText()V

    .line 301
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v3, Landroid/graphics/Rect;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_PADDINGS:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_PADDINGS:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_PADDINGS:I

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_PADDINGS:I

    invoke-direct {v3, v4, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setPaddings(Landroid/graphics/Rect;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 319
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f02002c

    const v7, 0x7f02002e

    const v8, 0x7f02002d

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 391
    const/4 v6, 0x0

    .line 392
    .local v6, "cameraQuickSettingsOpenResourceID":I
    const/4 v7, 0x0

    .line 393
    .local v7, "cameraQuickSettingsOpenPressResourceID":I
    const/4 v8, 0x0

    .line 399
    .local v8, "cameraQuickSettingsOpenDimResourceID":I
    const v6, 0x7f020234

    .line 400
    const v7, 0x7f020236

    .line 401
    const v8, 0x7f020235

    .line 404
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->QUICKSETTING_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SETTING_BUTTON_PADDING_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->QUICKSETTING_BUTTON_POS_Y:I

    int-to-float v5, v5

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v43

    .line 422
    .local v43, "resIDsSelf":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v15, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v43

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v43

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v43

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v43

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x24

    aput v4, v2, v3

    invoke-direct {v15, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 423
    .local v15, "bundleSelf":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v16

    .line 424
    .local v16, "cmdSelf":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SETTING_BUTTON_PADDING_X:I

    add-int/2addr v2, v3

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SWITCHCAMERA_BUTTON_POS_Y:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v14, v2

    const/16 v17, 0x2

    invoke-direct/range {v9 .. v17}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v41

    .line 429
    .local v41, "resIDsDual":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v23, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v41

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v41

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v41

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v41

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x57

    aput v4, v2, v3

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 430
    .local v23, "bundleDual":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x57

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v24

    .line 431
    .local v24, "cmdDual":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v17, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->DUAL_BUTTON_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SETTING_BUTTON_PADDING_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->DUAL_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v21, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    const/16 v25, 0x2

    invoke-direct/range {v17 .. v25}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDualModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 434
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v27, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v28, v0

    const v29, 0x7f0203e2

    const v30, 0x7f0203e2

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v25 .. v32}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 445
    new-instance v9, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v12, v2

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    .line 449
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setTag(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setClipping(Z)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 490
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_POS_X:I

    int-to-float v5, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_POS_Y:I

    int-to-float v9, v9

    const v10, 0x7f020233

    invoke-direct {v3, v4, v5, v9, v10}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDualModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_POS_X:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_OFFSET_X:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SEPARATOR_POS_Y:I

    int-to-float v9, v9

    const v10, 0x7f020233

    invoke-direct {v3, v4, v5, v9, v10}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickSettingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 505
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x7f020070

    const v30, 0x7f020072

    const v31, 0x7f020071

    const/16 v32, 0x0

    invoke-direct/range {v25 .. v32}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 509
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0248

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 517
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 526
    new-instance v9, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    int-to-float v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 527
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x7f0203b1

    const v30, 0x7f0203b6

    const v31, 0x7f0203b2

    sget v32, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    sget v33, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    invoke-direct/range {v25 .. v33}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x232b

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c009c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c009c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_TEXT_SIZE:I

    int-to-float v4, v4

    const v5, 0x7f090019

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v5, v9}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_TEXT_POS_DOWNLOAD_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 535
    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_ICON_POS_Y:I

    int-to-float v5, v5

    const v9, 0x7f0203b3

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadIcon:Lcom/sec/android/glview/TwGLImage;

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    sub-int/2addr v5, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 544
    new-instance v9, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    int-to-float v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 545
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x7f0203b1

    const v30, 0x7f0203b6

    const v31, 0x7f0203b2

    sget v32, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    sget v33, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    invoke-direct/range {v25 .. v33}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x232c

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c009d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c009d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_TEXT_SIZE:I

    int-to-float v4, v4

    const v5, 0x7f090019

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v5, v9}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_TEXT_POS_PRELOAD_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 553
    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_ICON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_ICON_POS_Y:I

    int-to-float v5, v5

    const v9, 0x7f0203b5

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadIcon:Lcom/sec/android/glview/TwGLImage;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    sub-int/2addr v5, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_POS_Y:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->EXT_BUTTON_HEIGHT:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 562
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 567
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v27, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v28, v0

    const v29, 0x7f020027

    const v30, 0x7f020028

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v25 .. v32}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c028b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 585
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v27, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v28, v0

    const v29, 0x7f0202fc

    const v30, 0x7f0202fd

    const v31, 0x7f0202fd

    const/16 v32, 0x0

    invoke-direct/range {v25 .. v32}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 597
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_ICON_POS_X:I

    int-to-float v0, v2

    move/from16 v27, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_ICON_POS_Y:I

    int-to-float v0, v2

    move/from16 v28, v0

    const v29, 0x7f0202fe

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v25 .. v32}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 628
    new-instance v25, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v26

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v27, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v28, v0

    const v29, 0x7f0202f9

    const v30, 0x7f0202fa

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v25 .. v32}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v42

    .line 637
    .local v42, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v31, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v42

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v42

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v42

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x3

    aput v4, v2, v3

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 638
    .local v31, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v9, 0x3

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v32

    .line 644
    .local v32, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v25, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v26, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v27, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v28, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v29, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v30, v0

    const/16 v33, 0x2

    invoke-direct/range {v25 .. v33}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOrientation(I)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 650
    new-instance v9, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_POS_X:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_POS_Y:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_WIDTH:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_POPUP_HEIGHT:I

    int-to-float v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f020458

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 653
    new-instance v33, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v34

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_POS_X:I

    int-to-float v0, v2

    move/from16 v35, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_POS_Y:I

    int-to-float v0, v2

    move/from16 v36, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v37, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_GALLERY_GUIDE_TEXT_FONT_SIZE:I

    int-to-float v0, v2

    move/from16 v40, v0

    invoke-direct/range {v33 .. v40}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuideText:Lcom/sec/android/glview/TwGLText;

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 667
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setCoverCameraMode(Z)V

    .line 670
    .end local v31    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v32    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v42    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 690
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 691
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseMenu-loading**added["

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

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 696
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailButton()V

    .line 705
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isEffectMenuEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 710
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isShutterButtonEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->disableShutterButton()V

    .line 714
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isQuickMenuVisible()Z

    move-result v2

    if-nez v2, :cond_9

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideQuickMenu()V

    .line 718
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    goto/16 :goto_0

    .line 447
    :cond_a
    new-instance v9, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v12, v2

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    goto/16 :goto_1

    .line 460
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 511
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_d

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 514
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0122

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 698
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xca

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_6

    .line 702
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    goto/16 :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 730
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 731
    return-void
.end method

.method public disableShutterButton()V
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->setDimNonTransparent()V

    .line 1515
    return-void
.end method

.method public enableShutterButton()V
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setDim(Z)V

    .line 1509
    return-void
.end method

.method public endShutterAnimation()V
    .locals 2

    .prologue
    .line 1499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1501
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    if-nez v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1504
    :cond_0
    return-void
.end method

.method public getCameraEnterKeyState()Z
    .locals 1

    .prologue
    .line 2307
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    return v0
.end method

.method public getChkBaseMenuItemsShow()Z
    .locals 1

    .prologue
    .line 1235
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mChkBaseMenuItemsShow:Z

    return v0
.end method

.method public getCurrentLocaleModeText()V
    .locals 7

    .prologue
    const v6, 0x7f02019d

    const v5, 0x7f02019c

    const v4, 0x7f020129

    const v3, 0x7f020128

    const v2, 0x7f020127

    .line 1926
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "currentLanguage":Ljava/lang/String;
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1929
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1930
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    .line 1932
    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1933
    const v1, 0x7f0200fc

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1934
    const v1, 0x7f0200fe

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1935
    const v1, 0x7f0200fd

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    .line 2191
    :cond_0
    :goto_0
    return-void

    .line 1937
    :cond_1
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1938
    const v1, 0x7f020105

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1939
    const v1, 0x7f020107

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1940
    const v1, 0x7f020106

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 1942
    :cond_2
    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1943
    :cond_3
    const v1, 0x7f0200ff

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1944
    const v1, 0x7f020101

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1945
    const v1, 0x7f020100

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 1947
    :cond_4
    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1948
    :cond_5
    const v1, 0x7f020108

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1949
    const v1, 0x7f02010a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1950
    const v1, 0x7f020109

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 1952
    :cond_6
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1953
    :cond_7
    const v1, 0x7f020118

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1954
    const v1, 0x7f02011a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1955
    const v1, 0x7f020119

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1957
    :cond_8
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1958
    const v1, 0x7f02011b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1959
    const v1, 0x7f02011d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1960
    const v1, 0x7f02011c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1962
    :cond_9
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1963
    :cond_a
    const v1, 0x7f020139

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1964
    const v1, 0x7f02013b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1965
    const v1, 0x7f02013a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1967
    :cond_b
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1968
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1969
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1970
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1972
    :cond_c
    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1973
    const v1, 0x7f02012a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1974
    const v1, 0x7f02012c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1975
    const v1, 0x7f02012b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1977
    :cond_d
    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1978
    const v1, 0x7f020102

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1979
    const v1, 0x7f020104

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1980
    const v1, 0x7f020103

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1982
    :cond_e
    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1983
    const v1, 0x7f02012d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1984
    const v1, 0x7f02012f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1985
    const v1, 0x7f02012e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1987
    :cond_f
    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1988
    const v1, 0x7f020130

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1989
    const v1, 0x7f020132

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1990
    const v1, 0x7f020131

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1992
    :cond_10
    const-string v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1993
    const v1, 0x7f020156

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1994
    const v1, 0x7f020158

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1995
    const v1, 0x7f020157

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1997
    :cond_11
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1998
    :cond_12
    const v1, 0x7f020133

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1999
    const v1, 0x7f020135

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2000
    const v1, 0x7f020134

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2002
    :cond_13
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2003
    const v1, 0x7f02013f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2004
    const v1, 0x7f020141

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2005
    const v1, 0x7f020140

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2007
    :cond_14
    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2008
    :cond_15
    const v1, 0x7f020145

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2009
    const v1, 0x7f020147

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2010
    const v1, 0x7f020146

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2012
    :cond_16
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2013
    :cond_17
    const v1, 0x7f020148

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2014
    const v1, 0x7f02014a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2015
    const v1, 0x7f020149

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2017
    :cond_18
    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2018
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2019
    const v1, 0x7f02019e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2020
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2022
    :cond_19
    const-string v1, "hy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2023
    const v1, 0x7f0200f9

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2024
    const v1, 0x7f0200fb

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2025
    const v1, 0x7f0200fa

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2027
    :cond_1a
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2028
    const v1, 0x7f02015b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2029
    const v1, 0x7f02015d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2030
    const v1, 0x7f02015c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2032
    :cond_1b
    const-string v1, "ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2033
    const v1, 0x7f020136

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2034
    const v1, 0x7f020138

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2035
    const v1, 0x7f020137

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2037
    :cond_1c
    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2038
    const v1, 0x7f020164

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2039
    const v1, 0x7f020166

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2040
    const v1, 0x7f020165

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2042
    :cond_1d
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2043
    const v1, 0x7f02015e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2044
    const v1, 0x7f020160

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2045
    const v1, 0x7f02015f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2047
    :cond_1e
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2048
    const v1, 0x7f020167

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2049
    const v1, 0x7f020169

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2050
    const v1, 0x7f020168

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2052
    :cond_1f
    const-string v1, "lo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2053
    const v1, 0x7f02016a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2054
    const v1, 0x7f02016c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2055
    const v1, 0x7f02016b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2057
    :cond_20
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2058
    const v1, 0x7f020170

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2059
    const v1, 0x7f020172

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2060
    const v1, 0x7f020171

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2062
    :cond_21
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2063
    const v1, 0x7f02016d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2064
    const v1, 0x7f02016f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2065
    const v1, 0x7f02016e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2067
    :cond_22
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2068
    const v1, 0x7f020178

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2069
    const v1, 0x7f02017a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2070
    const v1, 0x7f020179

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2072
    :cond_23
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2073
    :cond_24
    const v1, 0x7f020175

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2074
    const v1, 0x7f020177

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2075
    const v1, 0x7f020176

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2077
    :cond_25
    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2078
    const v1, 0x7f02017d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2079
    const v1, 0x7f02017f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2080
    const v1, 0x7f02017e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2082
    :cond_26
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2083
    const v1, 0x7f02011e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2084
    const v1, 0x7f020120

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2085
    const v1, 0x7f02011f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2087
    :cond_27
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2088
    const v1, 0x7f020184

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2089
    const v1, 0x7f020186

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2090
    const v1, 0x7f020185

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2092
    :cond_28
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2093
    const v1, 0x7f02018e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2094
    const v1, 0x7f020190

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2095
    const v1, 0x7f02018f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2097
    :cond_29
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2098
    const v1, 0x7f020187

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2099
    const v1, 0x7f020189

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2100
    const v1, 0x7f020188

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2102
    :cond_2a
    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2103
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2104
    const v1, 0x7f02019e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2105
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2107
    :cond_2b
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2108
    const v1, 0x7f0201a3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2109
    const v1, 0x7f0201a5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2110
    const v1, 0x7f0201a4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2111
    :cond_2c
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2112
    const v1, 0x7f0201a9

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2113
    const v1, 0x7f0201ab

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2114
    const v1, 0x7f0201aa

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2116
    :cond_2d
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2117
    const v1, 0x7f0201ac

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2118
    const v1, 0x7f0201ae

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2119
    const v1, 0x7f0201ad

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2121
    :cond_2e
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2122
    const v1, 0x7f0201af

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2123
    const v1, 0x7f0201b1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2124
    const v1, 0x7f0201b0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2126
    :cond_2f
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2127
    const v1, 0x7f0201bc

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2128
    const v1, 0x7f0201be

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2129
    const v1, 0x7f0201bd

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2131
    :cond_30
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2132
    const v1, 0x7f02010d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2133
    const v1, 0x7f02010f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2134
    const v1, 0x7f02010e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2136
    :cond_31
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2137
    :cond_32
    const v1, 0x7f0200f6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2138
    const v1, 0x7f0200f8

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2139
    const v1, 0x7f0200f7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2141
    :cond_33
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2142
    const v1, 0x7f02013c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2143
    const v1, 0x7f02013e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2144
    const v1, 0x7f02013d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2146
    :cond_34
    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2147
    const v1, 0x7f020142

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2148
    const v1, 0x7f020144

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2149
    const v1, 0x7f020143

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2151
    :cond_35
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2152
    const v1, 0x7f02014b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2153
    const v1, 0x7f02014d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2154
    const v1, 0x7f02014c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2156
    :cond_36
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2157
    const v1, 0x7f02014e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2158
    const v1, 0x7f020150

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2159
    const v1, 0x7f02014f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2161
    :cond_37
    const-string v1, "ig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2162
    const v1, 0x7f020151

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2163
    const v1, 0x7f020153

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2164
    const v1, 0x7f020152

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2166
    :cond_38
    const-string v1, "kk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2167
    const v1, 0x7f020161

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2168
    const v1, 0x7f020163

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2169
    const v1, 0x7f020162

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2171
    :cond_39
    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2172
    const v1, 0x7f020197

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2173
    const v1, 0x7f020199

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2174
    const v1, 0x7f020198

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2176
    :cond_3a
    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2177
    const v1, 0x7f0201a6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2178
    const v1, 0x7f0201a8

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2179
    const v1, 0x7f0201a7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2181
    :cond_3b
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2182
    const v1, 0x7f0201b4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2183
    const v1, 0x7f0201b6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2184
    const v1, 0x7f0201b5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 2186
    :cond_3c
    const-string v1, "yo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2187
    const v1, 0x7f0201bf

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 2188
    const v1, 0x7f0201c1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 2189
    const v1, 0x7f0201c0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0
.end method

.method public getRecordingButtonDimmed()Z
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public getShutterButtonDimmed()Z
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public getSuttherState()Z
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public hideBaseMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCoverCameraMenu()V

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1363
    return-void
.end method

.method public hideBaseMenuForBestShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 1307
    return-void
.end method

.method public hideBaseMenuForDualLiteShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 1212
    return-void
.end method

.method public hideBaseMenuForDualModeAsyncShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 1326
    return-void
.end method

.method public hideBaseMenuForDualShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 1317
    return-void
.end method

.method public hideBaseMenuForEditQuickSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1192
    :cond_1
    return-void
.end method

.method public hideBaseMenuForQuickMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1404
    const-string v0, "TwGLCameraBaseMenu"

    const-string v1, "hideBaseMenuForQuickMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEffectMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideCameraBaseIndicator()V

    .line 1413
    :cond_1
    return-void
.end method

.method public hideBaseMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonForSoundshotGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonForSoundshotGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1297
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 1298
    return-void
.end method

.method public hideCoverCameraMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 1371
    return-void
.end method

.method public hideCoverModeMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1663
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1667
    return-void
.end method

.method public hideDownloadButton()V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1557
    return-void
.end method

.method public hideEffectButton()V
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1430
    return-void
.end method

.method public hideEffectManageButton()V
    .locals 0

    .prologue
    .line 1563
    return-void
.end method

.method public hideEffectMenu()V
    .locals 8

    .prologue
    const/16 v7, 0x2c

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1786
    const-string v1, "TwGLCameraBaseMenu"

    const-string v2, "hideEffectMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    if-nez v1, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1790
    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    .line 1792
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    .line 1793
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailList()V

    .line 1796
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 1799
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1802
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1803
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1804
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1805
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1823
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1824
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1825
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 1826
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 1829
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v1

    if-ne v1, v6, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 1830
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v7, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getLightPipShotCount()I

    move-result v1

    if-eq v1, v5, :cond_5

    .line 1831
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailButton()V

    .line 1832
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1834
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showIndicators()V

    .line 1843
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isQuickSettingMenuOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1844
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isEffectMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1845
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showEffectButton()V

    .line 1850
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1851
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->enableShutterButton()V

    .line 1856
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isQuickMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1857
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showQuickMenu()V

    goto/16 :goto_0

    .line 1835
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1836
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v7, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getLightPipShotCount()I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 1837
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailButton()V

    .line 1838
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1840
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showIndicators()V

    goto :goto_1

    .line 1847
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideEffectButton()V

    goto :goto_2

    .line 1853
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->disableShutterButton()V

    goto :goto_3

    .line 1859
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideQuickMenu()V

    goto/16 :goto_0
.end method

.method public hideGalleryGuidePopup()V
    .locals 2

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1671
    return-void
.end method

.method public hidePreloadButton()V
    .locals 2

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1561
    return-void
.end method

.method public hideQuickMenu()V
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1524
    return-void
.end method

.method public hideRecordingButton()V
    .locals 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1442
    return-void
.end method

.method public hideReturnGroupPlayButton()V
    .locals 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1540
    return-void
.end method

.method public hideShootingModeButton()V
    .locals 2

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1532
    return-void
.end method

.method public hideShutterButton()V
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1478
    return-void
.end method

.method public hideThumbnailButton()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1553
    return-void
.end method

.method public hideThumbnailList()V
    .locals 3

    .prologue
    .line 1865
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1869
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1870
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1872
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1873
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1874
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1876
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1877
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1878
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1880
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1881
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1882
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1885
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1886
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1887
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    goto/16 :goto_0
.end method

.method public hideThumbnailListButton()V
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1434
    return-void
.end method

.method public isEffectMenuOpened()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1892
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v6, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return v4

    .line 1895
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    .line 1896
    .local v3, "rearMenu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x66

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 1897
    .local v2, "frontMenu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x5b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1898
    .local v0, "dualMenu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x2329

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 1900
    .local v1, "extMenu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 1901
    goto :goto_0

    .line 1902
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 1903
    goto :goto_0

    .line 1904
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 1905
    goto :goto_0

    .line 1906
    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 1907
    goto :goto_0
.end method

.method public isGalleryGuidePopupVisible()Z
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    const/4 v0, 0x1

    .line 1677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickSettingMenuOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1912
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return v1

    .line 1914
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1915
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    .line 1916
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1917
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRecordingButtonPressed()Z
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    .line 1685
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1584
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2264
    if-ne p1, v1, :cond_2

    .line 2265
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 2274
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    .line 2277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0

    .line 2281
    :cond_2
    const/16 v0, 0x76

    if-ne p1, v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 2290
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    .line 2292
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 11
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/16 v10, 0x232b

    const/16 v9, 0xcb

    const/16 v8, 0x42

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 984
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_0

    .line 985
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "mActivityContext is null"

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1178
    :goto_0
    return v3

    .line 989
    :cond_0
    if-nez p1, :cond_1

    .line 990
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "v is null"

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 991
    goto :goto_0

    .line 994
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    const/16 v6, 0x41

    if-eq v3, v6, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    const/16 v6, 0x1d

    if-eq v3, v6, :cond_2

    .line 995
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 998
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 999
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "return isCapturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1000
    goto :goto_0

    .line 1003
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isBurstCaptureStarting()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1004
    :cond_4
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "return isBurstCaptureStarting.."

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1005
    goto :goto_0

    .line 1008
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1009
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "return isPanoramaCapturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1010
    goto :goto_0

    .line 1013
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1014
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "return isStartPreview.."

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1015
    goto/16 :goto_0

    .line 1018
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1019
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "return getIsLaunchGallery.."

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1020
    goto/16 :goto_0

    .line 1023
    :cond_8
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    if-eq v3, v8, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    if-eq v3, v10, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    const/16 v6, 0x232c

    if-eq v3, v6, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    const/16 v6, 0x232e

    if-eq v3, v6, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    const/16 v6, 0x232f

    if-eq v3, v6, :cond_9

    .line 1028
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "return mIsEffectMenuOpen.."

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v3, v4

    .line 1030
    goto/16 :goto_0

    .line 1033
    :cond_9
    const-string v3, "TwGLCameraBaseMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 1178
    goto/16 :goto_0

    .line 1037
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1038
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1039
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->noImageToastPopup()V

    move v3, v5

    .line 1040
    goto/16 :goto_0

    .line 1043
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1044
    const-string v3, "TwGLCameraBaseMenu"

    const-string v4, "Attach = group-play"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1046
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "filepathlist"

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getFileListForGroupPlay()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1047
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1048
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    move v3, v5

    .line 1049
    goto/16 :goto_0

    .line 1051
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->noImage()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1052
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->noImageToastPopup()V

    .line 1061
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1062
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_c
    move v3, v5

    .line 1064
    goto/16 :goto_0

    .line 1054
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1055
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCoverModeGallery(Z)V

    .line 1056
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showCoverModeGallery()V

    move v3, v5

    .line 1057
    goto/16 :goto_0

    .line 1059
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "quickview"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1066
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getPostCaptureLayoutVisibility()I

    move-result v3

    if-nez v3, :cond_f

    move v3, v5

    .line 1068
    goto/16 :goto_0

    .line 1069
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getModeChange()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v5

    .line 1070
    goto/16 :goto_0

    .line 1073
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuid:I

    .line 1074
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuid:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    .line 1075
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v3

    if-nez v3, :cond_11

    move v3, v4

    .line 1076
    goto/16 :goto_0

    .line 1078
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v6, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 1079
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v8, v3, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 1082
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_12

    .line 1083
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_12
    move v3, v5

    .line 1084
    goto/16 :goto_0

    .line 1086
    :sswitch_2
    const-string v3, "TwGLCameraBaseMenu"

    const-string v6, "<Omy> onclick  MENUID_SHOOTINGMODE"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1088
    const-string v3, "TwGLCameraBaseMenu"

    const-string v5, "return isPrepareRecording.."

    invoke-static {v3, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1089
    goto/16 :goto_0

    .line 1091
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1092
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1094
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v3

    if-ne v3, v9, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    if-ne v3, v5, :cond_15

    .line 1095
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStepHide()V

    .line 1097
    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v5, v3, v4, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 1100
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_16

    .line 1101
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 1102
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v3

    if-ne v3, v9, :cond_17

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    if-ne v3, v5, :cond_17

    .line 1103
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep2()V

    :cond_17
    move v3, v5

    .line 1105
    goto/16 :goto_0

    .line 1107
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_18

    move v3, v4

    .line 1108
    goto/16 :goto_0

    .line 1110
    :cond_18
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1111
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 1114
    :cond_19
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    .line 1115
    .local v2, "shootingmode":I
    const/4 v0, 0x0

    .line 1116
    .local v0, "commandId":I
    const/16 v3, 0x23

    if-ne v2, v3, :cond_1a

    .line 1117
    const/16 v0, 0x4d

    .line 1123
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuid:I

    .line 1124
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuid:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    .line 1125
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    move v3, v4

    .line 1126
    goto/16 :goto_0

    .line 1119
    :cond_1a
    const/16 v0, 0x8

    goto :goto_2

    .line 1128
    :cond_1b
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v6, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 1129
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v3, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 1131
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1c

    .line 1132
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 1134
    :cond_1c
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v3

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_1d

    .line 1135
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1d

    .line 1136
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep7()V

    :cond_1d
    move v3, v5

    .line 1139
    goto/16 :goto_0

    .line 1141
    .end local v0    # "commandId":I
    .end local v2    # "shootingmode":I
    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setExternalMenuView(Z)V

    .line 1142
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v10, v3, v4, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 1144
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1e

    .line 1145
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_1e
    move v3, v5

    .line 1146
    goto/16 :goto_0

    .line 1148
    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setExternalMenuView(Z)V

    .line 1149
    const/16 v3, 0x232c

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    invoke-static {v3, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 1151
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1f

    .line 1152
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_1f
    move v3, v5

    .line 1153
    goto/16 :goto_0

    .line 1155
    :sswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1156
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1158
    :cond_20
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 1159
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 1167
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v3

    if-nez v3, :cond_21

    .line 1168
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    :goto_3
    move v3, v5

    .line 1173
    goto/16 :goto_0

    .line 1170
    :cond_21
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_3

    .line 1175
    :sswitch_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCoverModeClose(Z)V

    move v3, v5

    .line 1176
    goto/16 :goto_0

    .line 1035
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_2
        0x8 -> :sswitch_3
        0x1d -> :sswitch_0
        0x42 -> :sswitch_1
        0x51 -> :sswitch_6
        0x232b -> :sswitch_4
        0x232c -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 2195
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    .line 2196
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2197
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    .line 2202
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2211
    :cond_2
    :goto_0
    return v0

    .line 2206
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeRecordButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeRecordButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2207
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 2211
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2216
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    .line 2217
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2218
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_4

    .line 2219
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2259
    :cond_2
    :goto_0
    return v0

    .line 2221
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 2225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 2226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 2228
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isQuickSettingMenuOpened()Z

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isQuickSettingMenuTop()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2231
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_6

    .line 2236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_6
    move v0, v1

    .line 2239
    goto :goto_0

    .line 2240
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeRecordButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeRecordButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2241
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 2242
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2244
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 2248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 2249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 2251
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isQuickSettingMenuOpened()Z

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isQuickSettingMenuTop()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2254
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_b

    .line 2255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_b
    move v0, v1

    .line 2256
    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->resetEffectButton()V

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->removeUptateMessage()V

    .line 1589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 1591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hidePreloadButton()V

    .line 1592
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideDownloadButton()V

    .line 1593
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideEffectManageButton()V

    .line 1594
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1567
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1576
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1579
    :cond_1
    return-void

    .line 1570
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v9, 0x4d

    const/16 v8, 0x1b

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 782
    instance-of v5, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v5, :cond_1

    move v3, v4

    .line 980
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 786
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_d

    .line 787
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 788
    goto :goto_0

    .line 789
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 790
    goto :goto_0

    .line 792
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 793
    .local v1, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 794
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 797
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 798
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 799
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideEffectMenu()V

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isQuickSettingMenuOpened()Z

    move-result v5

    if-ne v5, v3, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isQuickSettingMenuTop()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isEffectMenuOpened()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 804
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 807
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 808
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    .line 809
    goto :goto_0

    .line 812
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    .line 813
    goto/16 :goto_0

    .line 817
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 819
    :pswitch_2
    const-string v5, "TwGLCameraBaseMenu"

    const-string v6, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_a

    move v3, v4

    .line 821
    goto/16 :goto_0

    .line 823
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v8, v7}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 827
    :pswitch_3
    const-string v4, "TwGLCameraBaseMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isEffectMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 829
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 831
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_c

    .line 832
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 833
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1

    .line 837
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v8, v7}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 840
    :pswitch_4
    const-string v4, "TwGLCameraBaseMenu"

    const-string v5, "onTouch MotionEvent.ACTION_CANCEL"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_0

    .line 847
    .end local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_15

    .line 848
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v5

    if-eqz v5, :cond_e

    move v3, v4

    .line 849
    goto/16 :goto_0

    .line 856
    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_f

    move v3, v4

    .line 857
    goto/16 :goto_0

    .line 861
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isQuickSettingMenuOpened()Z

    move-result v4

    if-eq v4, v3, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isEffectMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 862
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 865
    :cond_11
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 866
    .restart local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 867
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 870
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_0

    .line 872
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x82

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 875
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 876
    const-string v4, "TwGLCameraBaseMenu"

    const-string v5, "return isRecording.."

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 879
    :cond_13
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 880
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 881
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 882
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_14

    .line 883
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 884
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    .line 889
    :cond_14
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x82

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 890
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    if-eqz v4, :cond_0

    .line 891
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v4

    const/16 v5, 0xca

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    iget v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->STEP_NUM:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 892
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    goto/16 :goto_0

    .line 904
    .end local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_15
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_17

    .line 905
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v4

    .line 906
    goto/16 :goto_0

    .line 908
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :cond_17
    :goto_3
    :pswitch_8
    move v3, v4

    .line 980
    goto/16 :goto_0

    .line 914
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_18

    move v3, v4

    .line 915
    goto/16 :goto_0

    .line 917
    :cond_18
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 918
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 920
    :cond_19
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    .line 921
    .local v2, "shootingmode":I
    const/4 v0, 0x0

    .line 922
    .local v0, "commandId":I
    const/16 v3, 0x23

    if-ne v2, v3, :cond_1a

    .line 923
    const/16 v0, 0x4d

    .line 928
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuid:I

    .line 929
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuid:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    .line 930
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    move v3, v4

    .line 931
    goto/16 :goto_0

    .line 925
    :cond_1a
    const/16 v0, 0x8

    goto :goto_4

    .line 933
    :cond_1b
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v5, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 934
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v3, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 936
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1c

    .line 937
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 939
    :cond_1c
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v3

    const/16 v5, 0xcc

    if-ne v3, v5, :cond_17

    .line 940
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_17

    .line 941
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep7()V

    goto/16 :goto_3

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 870
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 908
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public resetEffectButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1777
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    .line 1779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetBaseLayout()V

    .line 1780
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetBaseLayout()V

    .line 1781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailButton()V

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1783
    return-void
.end method

.method public setCameraBaseMenuRequestFocus()V
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 2312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2313
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 2316
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 2317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2318
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 2321
    :cond_3
    return-void
.end method

.method public setCameraEnterKeyState(Z)V
    .locals 0
    .param p1, "CameraHardKey"    # Z

    .prologue
    .line 2303
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 2304
    return-void
.end method

.method public setChkBaseMenuItemsShow(Z)V
    .locals 0
    .param p1, "setChk"    # Z

    .prologue
    .line 1231
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mChkBaseMenuItemsShow:Z

    .line 1232
    return-void
.end method

.method public declared-synchronized setCoverCameraMode(Z)V
    .locals 4
    .param p1, "coverMode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1609
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLCameraBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverCameraMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->resetTranslate()V

    .line 1613
    if-eqz p1, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1615
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1616
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_OFFSET_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_OFFSET_Y:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->translateAbsolute(FFZ)V

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOrientation(I)V

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setRotatableForCoverMode(Z)V

    .line 1625
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    :goto_0
    monitor-exit p0

    return-void

    .line 1633
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOrientation(I)V

    .line 1637
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setRotatableForCoverMode(Z)V

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    if-ne v0, v3, :cond_1

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1642
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->clearUriListInSecureMode()V

    .line 1643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton()V

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1647
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1641
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setLiveBeautyMode(Z)V
    .locals 4
    .param p1, "isOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1461
    if-eqz p1, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    .line 1465
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020027

    const v2, 0x7f020028

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c028b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 1474
    :goto_0
    return-void

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020025

    const v2, 0x7f020026

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 1472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c028c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRecordingButtonDimmed(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1224
    return-void
.end method

.method public setShutterButtonDimmed(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1216
    return-void
.end method

.method public setThumbnailButtonDimmed(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->lockButton(Z)V

    .line 1606
    :cond_0
    return-void
.end method

.method public showBaseMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 1336
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1337
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1340
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->enableShutterButton()V

    .line 1345
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isQuickMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showQuickMenu()V

    .line 1350
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1352
    return-void

    .line 1342
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->disableShutterButton()V

    goto :goto_0

    .line 1348
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideQuickMenu()V

    goto :goto_1
.end method

.method public showBaseMenuForEditQuickSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1204
    :cond_3
    return-void
.end method

.method public showBaseMenuForQuickMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1374
    const-string v0, "TwGLCameraBaseMenu"

    const-string v1, "showBaseMenuForQuickMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPanoramaCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEffectMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1389
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1390
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->enableShutterButton()V

    .line 1395
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isQuickMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1396
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showQuickMenu()V

    .line 1400
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showCameraBaseIndicator()V

    goto :goto_0

    .line 1392
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->disableShutterButton()V

    goto :goto_1

    .line 1398
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideQuickMenu()V

    goto :goto_2
.end method

.method public showBaseMenuItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailButton()V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEffectMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->enableShutterButton()V

    .line 1263
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isQuickMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showQuickMenu()V

    .line 1269
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1272
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1279
    :cond_3
    return-void

    .line 1260
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->disableShutterButton()V

    goto :goto_0

    .line 1266
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideQuickMenu()V

    goto :goto_1
.end method

.method public showEffectButton()V
    .locals 3

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 1425
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1426
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showEffectMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 1697
    const-string v2, "TwGLCameraBaseMenu"

    const-string v3, "showEffectMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    if-eqz v2, :cond_0

    .line 1774
    :goto_0
    return-void

    .line 1701
    :cond_0
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    .line 1703
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEffectButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1705
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1707
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1710
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 1713
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1716
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1717
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1718
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1731
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1733
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1734
    .local v1, "alphaAnimation2":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1735
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1748
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1750
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 1751
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalMenuView()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 1752
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1753
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1770
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1771
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1772
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 1773
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    goto/16 :goto_0

    .line 1755
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 1756
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1757
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 1761
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtDownloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1762
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mExtPreloadGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public showGalleryGuidePopup()V
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mGalleryGuidePopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1657
    return-void
.end method

.method public showQuickMenu()V
    .locals 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mQuickMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1520
    return-void
.end method

.method public showRecordingButton()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1438
    return-void
.end method

.method public showReturnGroupPlayButton()V
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1536
    return-void
.end method

.method public showShootingModeButton()V
    .locals 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1528
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 1458
    :goto_0
    return-void

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1456
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showThumbnailButton()V
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1549
    :cond_1
    :goto_0
    return-void

    .line 1548
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public startShutterAnimation()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_0

    .line 1485
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 1487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 1490
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1495
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1496
    return-void
.end method

.method public updateEmptyButton()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmptyButton()V

    .line 761
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateThumbnailButton(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 746
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(ZI)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "bAnimation"    # Z

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 1600
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bAnimation"    # Z

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 779
    :cond_0
    return-void
.end method
