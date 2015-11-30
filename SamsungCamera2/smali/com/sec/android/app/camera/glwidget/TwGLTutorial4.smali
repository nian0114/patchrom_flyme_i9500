.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorial4.java"


# static fields
.field private static final DUAL_BUTTON_POS_X:I

.field private static final DUAL_BUTTON_POS_Y:I

.field private static final DUAL_MENU_HEIGHT:I

.field private static final DUAL_PIP_FOCUS_X:I

.field private static final DUAL_PIP_FOCUS_X_NORMAL:I

.field private static final DUAL_PIP_FOCUS_Y:I

.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final HELP_POPUP_HEIGHT:F

.field private static final HELP_POPUP_PADDING:[F

.field private static final HELP_POPUP_PICKER_PADDING:F

.field private static final HELP_POPUP_UP_OFFSET:F

.field private static final HELP_POPUP_VIEW_GROUP_PADDING:F

.field private static final HELP_POPUP_WIDTH:[F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_MARGIN:F

.field private static final HELP_TEXT_WIDTH:[F

.field private static final HELP_TEXT_WIDTH_MARGIN:F

.field private static final HELP_TEXT_WIDTH_OFFSET:F

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field public static final LAST_STEP:I = 0x8

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SETTING_MENU_PADDING:I

.field private static final SHUTTER_BUTTON_HEIGHT:F

.field private static final SHUTTER_BUTTON_WIDTH:F

.field private static final SHUTTER_BUTTON_X:F

.field private static final SHUTTER_BUTTON_Y:F

.field private static final SWITCHCAMERA_BUTTON_POS_X:I

.field private static final TABLET_FOCUS_PADDING_PLUS_X:I

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorial"


# instance fields
.field public STEP_NUM:I

.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOneLine6Step:Z

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    .line 25
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    .line 27
    const v0, 0x7f0a0286

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    .line 28
    const v0, 0x7f0a0289

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    .line 29
    new-array v0, v6, [F

    const v1, 0x7f0a028a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a028b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    .line 30
    const v0, 0x7f0a028d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    .line 31
    const v0, 0x7f0a028c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    .line 33
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    .line 34
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    .line 36
    const v0, 0x7f0a0279

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    .line 37
    const v0, 0x7f0a027a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [F

    const v1, 0x7f0a027b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a027c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a027d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    .line 42
    const v0, 0x7f0b005a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    .line 43
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_COLOR:I

    .line 45
    const v0, 0x7f0a01cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_MENU_HEIGHT:I

    .line 46
    sput v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SETTING_MENU_PADDING:I

    .line 48
    const v0, 0x7f0a0276

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    .line 50
    const v0, 0x7f0a0016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_WIDTH:F

    .line 51
    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_HEIGHT:F

    .line 52
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const v1, 0x7f0a000b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f0a001a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_X:F

    .line 54
    const v0, 0x7f0a001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_Y:F

    .line 56
    const v0, 0x7f0a0028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SETTING_MENU_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SWITCHCAMERA_BUTTON_POS_X:I

    .line 57
    const v0, 0x7f0a002a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SETTING_MENU_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    .line 58
    const v0, 0x7f0a002b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    .line 59
    const v0, 0x7f0a0272

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X:I

    .line 60
    const v0, 0x7f0a0273

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X_NORMAL:I

    .line 61
    const v0, 0x7f0a0274

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    .line 63
    const v0, 0x7f0a000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    .line 64
    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_HEIGHT:I

    .line 66
    const v0, 0x7f0a0292

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_VIEW_GROUP_PADDING:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 83
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 84
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f851eb8    # 1.04f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f851eb8    # 1.04f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 85
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    .line 94
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 96
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_VIEW_GROUP_PADDING:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 98
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0203ea

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 104
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203ed

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 105
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203ec

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    .line 107
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->blinkAnimation:Landroid/view/animation/Animation;

    .line 108
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203ee

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    .line 120
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203e6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    .line 121
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203e7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    .line 122
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203e4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    .line 123
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203e5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setBypassTouch(Z)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep1()V

    .line 146
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 630
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public drawResizeGuide(IIII)V
    .locals 11
    .param p1, "right"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 483
    add-int v3, p2, p3

    .line 484
    .local v3, "dist_tl":I
    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    sub-int/2addr v7, p1

    add-int v4, v7, p3

    .line 485
    .local v4, "dist_tr":I
    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sub-int/2addr v7, p4

    add-int v1, p2, v7

    .line 486
    .local v1, "dist_bl":I
    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    sub-int/2addr v7, p1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sub-int/2addr v8, p4

    add-int v2, v7, v8

    .line 488
    .local v2, "dist_br":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 489
    .local v6, "top_max":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 490
    .local v0, "bottom_max":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 492
    .local v5, "max":I
    if-ne v5, v3, :cond_1

    .line 493
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 494
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 495
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 496
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 497
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    int-to-float v8, p2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    int-to-float v9, p3

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 517
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 518
    return-void

    .line 498
    :cond_1
    if-ne v5, v4, :cond_2

    .line 499
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 500
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 501
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 502
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 503
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    add-int/lit8 v8, p1, 0x0

    int-to-float v8, v8

    int-to-float v9, p3

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_0

    .line 504
    :cond_2
    if-ne v5, v1, :cond_3

    .line 505
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 506
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 507
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 508
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 509
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    int-to-float v8, p2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    add-int/lit8 v9, p4, 0x0

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_0

    .line 510
    :cond_3
    if-ne v5, v2, :cond_0

    .line 511
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 512
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 513
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 514
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 515
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    add-int/lit8 v8, p1, 0x0

    int-to-float v8, v8

    add-int/lit8 v9, p4, 0x0

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto/16 :goto_0
.end method

.method public hideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 604
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 609
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 614
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 619
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 624
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 626
    :cond_4
    return-void
.end method

.method public hideHelpView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 596
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 597
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 599
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setSizeForOrientation(I)V

    .line 707
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 708
    return-void
.end method

.method public setHelpText(I)V
    .locals 12
    .param p1, "step"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "helptext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 151
    .local v3, "rows":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 152
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 154
    .local v1, "mTextSize":F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 405
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 406
    return-void

    .line 159
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c029a

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 178
    :goto_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 179
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 180
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 183
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 184
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 186
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 189
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 190
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 164
    :pswitch_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 165
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 166
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_1

    .line 170
    :pswitch_3
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 171
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_1

    .line 195
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c029b

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 214
    :goto_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 216
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 219
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 220
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 222
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 225
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 226
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 227
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 228
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 200
    :pswitch_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 202
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_2

    .line 206
    :pswitch_6
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 207
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_2

    .line 231
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c029c

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 256
    :goto_3
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 257
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 258
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 261
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 262
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 264
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 267
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 268
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 269
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 236
    :pswitch_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 237
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 238
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 241
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_3

    .line 245
    :pswitch_9
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 246
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 247
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 248
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 250
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_3

    .line 272
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c029d

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 305
    :goto_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 306
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 307
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 308
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 316
    :goto_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 317
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 318
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 320
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 329
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 332
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 279
    :pswitch_b
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 280
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 282
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 283
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    goto/16 :goto_4

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 286
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_4

    .line 291
    :pswitch_c
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 292
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 294
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 295
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    goto/16 :goto_4

    .line 297
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_4

    .line 310
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 312
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_5

    .line 323
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 325
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_6

    .line 335
    :pswitch_d
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c029e

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_5

    .line 354
    :goto_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 355
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 357
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 360
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 365
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 366
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 340
    :pswitch_e
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 342
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_7

    .line 346
    :pswitch_f
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 347
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 348
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_7

    .line 372
    :pswitch_10
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c029f

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_6

    .line 391
    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 392
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 394
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_VIEW_GROUP_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 395
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_X:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_WIDTH:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 397
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 398
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 399
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 379
    :pswitch_11
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 380
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_8

    .line 384
    :pswitch_12
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 385
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_8

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_d
        :pswitch_10
    .end packed-switch

    .line 161
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 197
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 233
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 276
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 337
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 376
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "rows":I
    packed-switch p1, :pswitch_data_0

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v8, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_5

    .line 644
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v7

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 650
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_4

    .line 651
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v8, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_2

    .line 652
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 653
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v6, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    if-nez v1, :cond_3

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 655
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 657
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v9, :cond_0

    .line 658
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 660
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 646
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v6, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    if-nez v1, :cond_1

    .line 647
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v7

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 666
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v6, :cond_c

    .line 667
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v8, :cond_a

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_a

    .line 668
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 674
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_9

    .line 675
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v8, :cond_b

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_b

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 679
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 693
    :cond_9
    :goto_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v9, :cond_0

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 696
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_0

    .line 670
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v6, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    if-nez v1, :cond_7

    .line 671
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_2

    .line 677
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v6, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mOneLine6Step:Z

    if-nez v1, :cond_8

    .line 678
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_3

    .line 682
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v8, :cond_d

    .line 683
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 686
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_9

    .line 687
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v8, :cond_e

    .line 688
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 689
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    goto/16 :goto_4

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStep1()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 409
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "paddingY":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->TABLET_FOCUS_PADDING_PLUS_X:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 417
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xcc

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 423
    return-void
.end method

.method public setStep2()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 426
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "paddingY":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SWITCHCAMERA_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 432
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 433
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xcc

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 438
    return-void
.end method

.method public setStep3()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 441
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 454
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 471
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 473
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X_NORMAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_1

    .line 465
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_1

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStep5(IIII)V
    .locals 3
    .param p1, "right"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x4

    .line 521
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 522
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->drawResizeGuide(IIII)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 529
    return-void
.end method

.method public setStep6()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 532
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203ee

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203e9

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 545
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 551
    return-void
.end method

.method public setStep7()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 554
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203e9

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_MENU_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 563
    return-void
.end method

.method public setStep8()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 566
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203eb

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 577
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 583
    return-void
.end method

.method public setStep_complete()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 586
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 589
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 593
    return-void
.end method
