.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorial1.java"


# static fields
.field private static final EASY_RIGHT_SIDE_BUTTON_WIDTH:F

.field private static final EASY_SHUTTER_BUTTON_HEIGHT:F

.field private static final EASY_SHUTTER_BUTTON_X:F

.field private static final EASY_SHUTTER_BUTTON_Y:F

.field private static final FOCUS_PICKER_LEFT_PADDING:I

.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final HELP_POPUP_HEIGHT:F

.field private static final HELP_POPUP_PADDING:[F

.field private static final HELP_POPUP_PADDING_OFFSET:F

.field private static final HELP_POPUP_PADDING_RIGHT:F

.field private static final HELP_POPUP_PICKER_PADDING:F

.field private static final HELP_POPUP_VIEW_GROUP_PADDING:F

.field private static final HELP_POPUP_VIEW_GROUP_PADDING_Y_OFFSET:F

.field private static final HELP_POPUP_WIDTH:[F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_MARGIN:F

.field private static final HELP_TEXT_WIDTH:[F

.field private static final HELP_TEXT_WIDTH_ADJUST_MARGIN:F

.field private static final HELP_TEXT_WIDTH_MARGIN:F

.field private static final HELP_TEXT_WIDTH_MARGIN_POSITION:F

.field private static final HELP_TUTORIAL_POPUP_PICKER_PADDING:F

.field public static final LAST_STEP:I = 0x3

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHUTTER_BUTTON_HEIGHT:F

.field private static final SHUTTER_BUTTON_WIDTH:F

.field private static final SHUTTER_BUTTON_X:F

.field private static final SHUTTER_BUTTON_Y:F

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorial"

.field private static final TOUCH_FOCUS_X:I

.field private static final TOUCH_FOCUS_Y:I


# instance fields
.field public STEP_NUM:I

.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

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

    .line 26
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    .line 27
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    .line 29
    const v0, 0x7f0a0286

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    .line 30
    const v0, 0x7f0a0287

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN_POSITION:F

    .line 31
    const v0, 0x7f0a0288

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_ADJUST_MARGIN:F

    .line 32
    const v0, 0x7f0a0289

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT_MARGIN:F

    .line 33
    new-array v0, v6, [F

    const v1, 0x7f0a028a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a028b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    .line 34
    const v0, 0x7f0a028d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    .line 36
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    .line 37
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    .line 39
    const v0, 0x7f0a0279

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    .line 40
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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    .line 43
    const v0, 0x7f0a0281

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TUTORIAL_POPUP_PICKER_PADDING:F

    .line 45
    const v0, 0x7f0a0016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_WIDTH:F

    .line 46
    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_HEIGHT:F

    .line 47
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const v1, 0x7f0a000b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f0a001a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_X:F

    .line 49
    const v0, 0x7f0a001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_Y:F

    .line 51
    const v0, 0x7f0a0212

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_RIGHT_SIDE_BUTTON_WIDTH:F

    .line 52
    const v0, 0x7f0a0216

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_SHUTTER_BUTTON_HEIGHT:F

    .line 53
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_RIGHT_SIDE_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    const v1, 0x7f0a0219

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_SHUTTER_BUTTON_X:F

    .line 55
    const v0, 0x7f0a0217

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0a0213

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x7f0a0218

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_SHUTTER_BUTTON_Y:F

    .line 58
    const v0, 0x7f0a0270

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_X:I

    .line 59
    const v0, 0x7f0a0271

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_Y:I

    .line 60
    const v0, 0x7f0a028f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FOCUS_PICKER_LEFT_PADDING:I

    .line 62
    const v0, 0x7f0b005a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    .line 63
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_COLOR:I

    .line 65
    const v0, 0x7f0a0278

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_RIGHT:F

    .line 66
    const v0, 0x7f0a0291

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    .line 67
    const v0, 0x7f0a0292

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_VIEW_GROUP_PADDING:F

    .line 68
    const v0, 0x7f0a0293

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_VIEW_GROUP_PADDING_Y_OFFSET:F

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
    .line 89
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 84
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 85
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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 86
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 93
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_VIEW_GROUP_PADDING:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_VIEW_GROUP_PADDING_Y_OFFSET:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 95
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN_POSITION:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_ADJUST_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 98
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0203ea

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203eb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 102
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203ec

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    .line 104
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->blinkAnimation:Landroid/view/animation/Animation;

    .line 105
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203ee

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setBypassTouch(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setStep1()V

    .line 131
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 518
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public hideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 136
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 141
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 146
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 156
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 158
    :cond_4
    return-void
.end method

.method public onHelpTts()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 602
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setSizeForOrientation(I)V

    .line 596
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 597
    return-void
.end method

.method public setHelpText(I)V
    .locals 11
    .param p1, "step"    # I

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "helptext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 171
    .local v3, "rows":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 172
    .local v2, "paint":Landroid/graphics/Paint;
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "mTextSize":F
    packed-switch p1, :pswitch_data_0

    .line 404
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 405
    return-void

    .line 177
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0290

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 210
    :goto_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 212
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 224
    :goto_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 225
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 226
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 227
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 235
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 236
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 184
    :pswitch_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 185
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 187
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_1

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 191
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_1

    .line 196
    :pswitch_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 197
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 199
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_1

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 203
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_1

    .line 218
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 220
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 230
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 231
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 241
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0291

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 272
    :goto_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 274
    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 275
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 277
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 286
    :goto_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 287
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 288
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 289
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 297
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 246
    :pswitch_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 247
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 248
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 249
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_4

    .line 252
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 253
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_4

    .line 258
    :pswitch_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 259
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_4

    .line 264
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 265
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_4

    .line 280
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 282
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_5

    .line 292
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 293
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_6

    .line 303
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0292

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 339
    :goto_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 340
    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_RIGHT:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 343
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    add-float/2addr v7, v1

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_RIGHT:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 351
    :goto_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 352
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 355
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 363
    :goto_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 364
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 365
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 366
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 309
    :pswitch_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 310
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 311
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 312
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 318
    :goto_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 319
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 315
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 316
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_a

    .line 323
    :pswitch_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 324
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 325
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 326
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 332
    :goto_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 333
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 329
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_b

    .line 346
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_RIGHT:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TUTORIAL_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 347
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_RIGHT:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_8

    .line 358
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 360
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_9

    .line 370
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c029f

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 389
    :goto_c
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 390
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 392
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_VIEW_GROUP_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 393
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_X:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_WIDTH:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 396
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 397
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 398
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 377
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 378
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_c

    .line 382
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 383
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto/16 :goto_c

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 243
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 306
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 374
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 12
    .param p1, "orientation"    # I

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, "rows":I
    const/4 v0, 0x0

    .line 532
    .local v0, "mTextSize":F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 533
    .local v1, "paint":Landroid/graphics/Paint;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 535
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 537
    packed-switch p1, :pswitch_data_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-eq v3, v8, :cond_1

    .line 541
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 543
    if-ne v2, v7, :cond_4

    .line 544
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 548
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_3

    .line 549
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-eq v3, v8, :cond_2

    .line 550
    if-ne v2, v7, :cond_5

    .line 551
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 555
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 557
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-ne v3, v11, :cond_0

    .line 558
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v9}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 560
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 546
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v9

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 553
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_2

    .line 566
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-eq v3, v8, :cond_6

    .line 567
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v7

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING_OFFSET:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 568
    if-ne v2, v7, :cond_9

    .line 569
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 573
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_8

    .line 574
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-eq v3, v8, :cond_7

    .line 575
    if-ne v2, v7, :cond_a

    .line 576
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 580
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 582
    :cond_8
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-ne v3, v11, :cond_0

    .line 583
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_0

    .line 584
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v8}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 585
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v9}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_0

    .line 571
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v7

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    .line 578
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v7

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_4

    .line 537
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
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 408
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_SHUTTER_BUTTON_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_SHUTTER_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->EASY_SHUTTER_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 428
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setHelpText(I)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 451
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto/16 :goto_0
.end method

.method public setStep2()V
    .locals 3

    .prologue
    .line 454
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 455
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setHelpText(I)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 464
    return-void
.end method

.method public setStep3()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 467
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203ef

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203ed

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FOCUS_PICKER_LEFT_PADDING:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FOCUS_PICKER_LEFT_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 477
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setHelpText(I)V

    .line 478
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 503
    return-void

    .line 481
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_0

    .line 487
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStepHide()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 162
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 165
    :cond_0
    return-void
.end method

.method public setStep_complete()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 506
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 510
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setHelpText(I)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 514
    return-void
.end method
