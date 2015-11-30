.class public Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLGolfMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final DETECTING_DURATION:I = 0x3e8

.field private static GOLF_LEFT_BUTTON_POS_X:I = 0x0

.field private static GOLF_LEFT_BUTTON_POS_Y:I = 0x0

.field private static GOLF_MAX_WAIT_SEC:I = 0x0

.field private static GOLF_RIGHT_BUTTON_POS_X:I = 0x0

.field private static GOLF_RIGHT_BUTTON_POS_Y:I = 0x0

.field protected static GOLF_SCREEN_HEIGHT:I = 0x0

.field protected static GOLF_SCREEN_HEIGHT_PADDING:I = 0x0

.field protected static GOLF_SCREEN_LEFT:I = 0x0

.field private static final GOLF_SCREEN_POS_X:F

.field private static final GOLF_SCREEN_POS_Y:F

.field protected static GOLF_SCREEN_TOP:I = 0x0

.field protected static GOLF_SCREEN_WIDTH:I = 0x0

.field private static final HELP_TEXT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERTICAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_TOP_MARGIN:F

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERTICAL:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOW_DETECTING_TEXT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLGolfMenu"


# instance fields
.field private mCount:I

.field private mDetectState:Z

.field private mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

.field private mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

.field private mGolfImage:Lcom/sec/android/glview/TwGLImage;

.field private mGolfImageArray:[I

.field private mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

.field protected mHandler:Landroid/os/Handler;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mOrientation:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0a0476

    const v3, 0x7f0a0475

    const/high16 v2, 0x40000000    # 2.0f

    .line 50
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_WIDTH:I

    .line 51
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_HEIGHT:I

    .line 53
    const v0, 0x7f0a00c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    .line 54
    const v0, 0x7f0a00ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 55
    const v0, 0x7f0a00cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    .line 56
    const v0, 0x7f0a00cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    .line 58
    const v0, 0x7f0a00cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIDE_MARGIN:F

    .line 59
    const v0, 0x7f0a00cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_TOP_MARGIN:F

    .line 60
    const v0, 0x7f0a042d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 62
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    .line 63
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_TOP_MARGIN:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_Y:F

    .line 65
    const v0, 0x7f0b0066

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIZE:F

    .line 67
    const v0, 0x7f0a039e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_LEFT:I

    .line 68
    const v0, 0x7f0a039f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_TOP:I

    .line 69
    const v0, 0x7f0a03a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    .line 70
    const v0, 0x7f0a03a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    .line 71
    const v0, 0x7f0a03a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT_PADDING:I

    .line 73
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_X:F

    .line 74
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_Y:F

    .line 76
    const v0, 0x7f0a0427

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_X:I

    .line 77
    const v0, 0x7f0a0428

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_Y:I

    .line 78
    const v0, 0x7f0a0429

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_X:I

    .line 79
    const v0, 0x7f0a042a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_Y:I

    .line 81
    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 131
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 87
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDetectState:Z

    .line 90
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImageArray:[I

    .line 111
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 134
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_LEFT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_TOP:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f020098

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT_PADDING:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_X:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_Y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 147
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0203e0

    const v5, 0x7f0203e1

    const v6, 0x7f0203e0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0203de

    const v5, 0x7f0203df

    const v6, 0x7f0203de

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 171
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0c0229

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;-><init>(Lcom/sec/android/glview/TwGLContext;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setToastAlign(II)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setDuration(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setAnimationEnable(Z)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setCaptureEnabled(Z)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setTouchHandled(Z)V

    .line 190
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->init()V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setOrientationListener()V

    .line 192
    return-void

    .line 101
    :array_0
    .array-data 4
        0x7f02009a
        0x7f020099
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    return p1
.end method

.method static synthetic access$210(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->resetAcquisitionProgress()V

    .line 197
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 400
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->clear()V

    .line 404
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 409
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 414
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 419
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 424
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    .line 426
    :cond_5
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 427
    return-void
.end method

.method public getOrientationGolf()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getProgressValue()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideHelpText()V

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfImage()V

    .line 320
    return-void
.end method

.method public hideDetectText()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->removeDetectingMessage()V

    .line 267
    return-void
.end method

.method public hideGolfButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 587
    :cond_1
    return-void
.end method

.method public hideGolfImage()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfButton()V

    .line 287
    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->removeDetectingMessage()V

    .line 244
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 305
    return-void
.end method

.method public onGolfShotCreatingCompleted()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0c022b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    return-void
.end method

.method public onGolfshotCancel()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 495
    return-void
.end method

.method public onGolfshotError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0c022a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->removeDetectingMessage()V

    .line 544
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 545
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideCaptureLayout()V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setShutterButtonDim(I)V

    .line 301
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 341
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    :cond_1
    :goto_0
    return v0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    if-ne v1, v0, :cond_3

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 358
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x1b

    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    const/16 v1, 0x50

    if-eq p1, v1, :cond_2

    if-ne p1, v5, :cond_3

    .line 366
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    if-nez v1, :cond_3

    .line 367
    const-string v1, "TwGLGolfMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setOrientation(I)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->show()V

    goto :goto_0

    .line 375
    :cond_3
    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_5

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    :cond_5
    if-ne p1, v4, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->removeDetectingMessage()V

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    goto :goto_0

    .line 389
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 600
    const-string v0, "TwGLGolfMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setShutterButtonDim(I)V

    .line 606
    rem-int/lit8 v0, p1, 0x2

    if-ne v0, v3, :cond_2

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 610
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    .line 611
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_3

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showGolfImage()V

    .line 621
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showText()V

    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 615
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->onGolfshotCancel()V

    .line 616
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_5

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 619
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfButton()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideCaptureLayout()V

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setShutterButtonDim(I)V

    .line 436
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->reset()V

    .line 442
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 295
    return-void
.end method

.method public removeDetectingMessage()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    .line 338
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 394
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 309
    return-void
.end method

.method public setGolfImageLeftRight(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    if-nez p1, :cond_5

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImageArray:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 576
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGolfDirection(I)V

    goto :goto_0

    .line 566
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_6

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImageArray:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_7

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 572
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 535
    return-void
.end method

.method public setOutputFile()V
    .locals 6

    .prologue
    .line 449
    const-string v4, "TwGLGolfMenu"

    const-string v5, "setOutputFile"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v3, "golfshot_temp.golf"

    .line 452
    .local v3, "mTempFileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 456
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 459
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "filename":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/Camera;->setOutputFile(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 312
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 315
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 333
    return-void
.end method

.method public setShutterButtonDim(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v1, 0x75

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 596
    :cond_0
    return-void
.end method

.method public showCaptureLayout()V
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showText()V

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showGolfImage()V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 330
    :cond_0
    return-void
.end method

.method public showDetectText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0228

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (00:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDetectState:Z

    .line 258
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfButton()V

    .line 260
    return-void

    .line 252
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (00:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showGolfImage()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 275
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGolfDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setGolfImageLeftRight(I)V

    goto :goto_0
.end method

.method public showHelpText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 229
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c015f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 235
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDetectState:Z

    .line 237
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showText()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    .line 207
    .local v0, "state":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 209
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_4

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c0229

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 223
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_4
    if-ne v0, v3, :cond_5

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c0228

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_5
    if-nez v0, :cond_2

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public storeGolfimage([B)V
    .locals 13
    .param p1, "data"    # [B

    .prologue
    const/4 v12, 0x0

    .line 464
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    .line 465
    .local v6, "tempString":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v8, "golf"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    invoke-direct {v2, p1, v12, v8}, Ljava/lang/String;-><init>([BII)V

    .line 466
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v8, "Camera/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    const-string v9, ".golf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, "Camera/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x7

    sub-int/2addr v9, v10

    invoke-direct {v3, p1, v8, v9}, Ljava/lang/String;-><init>([BII)V

    .line 468
    .local v3, "filename":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 469
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v4

    .line 470
    .local v4, "location":Landroid/location/Location;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v0

    .line 472
    .local v0, "dateTaken":J
    const-string v8, "title"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v8, "_display_name"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    const-string v8, "mime_type"

    const-string v9, "video/golf"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v8, "_data"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    if-eqz v4, :cond_0

    .line 478
    const-string v8, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    double-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 479
    const-string v8, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    double-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 481
    :cond_0
    const-string v8, "_size"

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 484
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v5

    .line 486
    .local v5, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v8, "TwGLGolfMenu"

    const-string v9, "Not enough space in database"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0c0184

    invoke-static {v8, v9, v12}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
