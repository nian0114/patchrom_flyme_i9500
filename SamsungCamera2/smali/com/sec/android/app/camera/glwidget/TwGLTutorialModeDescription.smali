.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorialModeDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;
    }
.end annotation


# static fields
.field private static final CONTENT_HEIGHT:F

.field private static final CONTENT_POS_X:[F

.field private static final CONTENT_WIDTH:[F

.field private static final DESCRIPTION_FONT_COLOR:I

.field private static final DESCRIPTION_FONT_SIZE:I

.field private static final DESCRIPTION_FONT_SIZE_PADDING:I

.field private static final DESCRIPTION_GROUP_PADDING_HEIGHT:[F

.field private static final DESCRIPTION_GROUP_PORTRAIT_POS_X:[F

.field private static final DESCRIPTION_GROUP_WIDTH:[F

.field private static final DESCRIPTION_IMAGE_X:[F

.field private static final DESCRIPTION_IMAGE_Y:[F

.field private static final DESCRIPTION_LINE_HEIGHT:F

.field private static final DESCRIPTION_OFFSET_Y:F

.field private static final TITLE_DESCRIPTION_PADDING:F

.field private static final TITLE_FONT_SIZE:I

.field private static final TITLE_FONT_SIZE_PADDING:I

.field private static final TITLE_HEIGHT:F

.field private static final TITLE_POS_Y:[F

.field private static final TUTORIAL_MODE_SCALE_RATIO:F = 0.73f


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mTitle:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-array v0, v6, [F

    const v1, 0x7f0a02a1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02a2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a02a3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a02a4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    .line 22
    const v0, 0x7f0a02a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    .line 23
    const v0, 0x7f0a02a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_DESCRIPTION_PADDING:F

    .line 24
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_OFFSET_Y:F

    .line 25
    const v0, 0x7f0a02a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    .line 26
    new-array v0, v4, [F

    const v1, 0x7f0a02aa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02ad

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    .line 27
    new-array v0, v6, [F

    const v1, 0x7f0a02ab

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02ae

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a02ab

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a02ae

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    .line 29
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    .line 30
    new-array v0, v4, [F

    const v1, 0x7f0a02ac

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02af

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    .line 31
    new-array v0, v6, [F

    const v1, 0x7f0a02a8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02a9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a02a8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a02a9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    .line 33
    new-array v0, v4, [F

    const v1, 0x7f0a02b3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02b4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    .line 34
    new-array v0, v4, [F

    const v1, 0x7f0a02b5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02b6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    .line 35
    new-array v0, v4, [F

    const v1, 0x7f0a02b1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a02b2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PORTRAIT_POS_X:[F

    .line 37
    const v0, 0x7f0b003d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE_PADDING:I

    .line 38
    const v0, 0x7f0b003e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE_PADDING:I

    .line 40
    const v0, 0x7f0b0049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE:I

    .line 41
    const v0, 0x7f0b004a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    .line 42
    const/16 v0, 0xff

    const/16 v1, 0xe0

    const/16 v2, 0xe0

    const/16 v3, 0xe0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 56
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 57
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE_PADDING:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 58
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_OFFSET_Y:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE_PADDING:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 59
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    sub-float v3, p5, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PORTRAIT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    add-float/2addr v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PORTRAIT_POS_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 68
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020428

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x3f3ae148    # 0.73f

    const v2, 0x3f3ae148    # 0.73f

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->scale(FF)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method


# virtual methods
.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    .line 79
    return-void
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V
    .locals 13
    .param p1, "bundle"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p2, "orientation"    # I

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "description":Ljava/lang/String;
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "rows":I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 144
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    const v5, 0x3f3ae148    # 0.73f

    mul-float v2, v4, v5

    .line 145
    .local v2, "imageHeight":F
    const/4 v1, 0x0

    .line 146
    .local v1, "descriptionGroupBottomPadding":F
    packed-switch p2, :pswitch_data_1

    .line 242
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 243
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->showDescription()V

    .line 246
    return-void

    .line 87
    .end local v1    # "descriptionGroupBottomPadding":F
    .end local v2    # "imageHeight":F
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0053

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0055

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0054

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0052

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    goto :goto_0

    .line 99
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0058

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 102
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c005a

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 106
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c005d

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    goto :goto_0

    .line 109
    :pswitch_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0056

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    goto/16 :goto_0

    .line 112
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0065

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    goto/16 :goto_0

    .line 115
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0060

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto/16 :goto_0

    .line 118
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0057

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    goto/16 :goto_0

    .line 121
    :pswitch_c
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c005b

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    goto/16 :goto_0

    .line 124
    :pswitch_d
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0059

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    goto/16 :goto_0

    .line 127
    :pswitch_e
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v4

    if-eq v4, v8, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/MenuDimController;->getSavedUserSettingValues(I)I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 129
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0050

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0051

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    goto/16 :goto_0

    .line 135
    :pswitch_f
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c005c

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    goto/16 :goto_0

    .line 138
    :pswitch_10
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c005e

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    goto/16 :goto_0

    .line 141
    :pswitch_11
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0062

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    .restart local v1    # "descriptionGroupBottomPadding":F
    .restart local v2    # "imageHeight":F
    :pswitch_12
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v9

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE_PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 149
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v9

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v9

    sub-float v1, v4, v5

    .line 150
    :goto_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v5, v1, v11

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v9

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 154
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v9

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 156
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 157
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 158
    if-ge v3, v10, :cond_4

    .line 159
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 166
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v9

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v9

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 167
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    neg-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 168
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 160
    :cond_4
    if-ne v3, v10, :cond_5

    .line 161
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v9

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    div-float/2addr v7, v11

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_3

    .line 163
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v9

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_3

    .line 171
    :pswitch_13
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE_PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 172
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v8

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v8

    sub-float v1, v4, v5

    .line 173
    :goto_4
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v5, v1, v11

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_6

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 176
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v8

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 177
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v8

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 179
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v8

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 180
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v8

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 182
    if-ge v3, v10, :cond_7

    .line 183
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 190
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v8

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 191
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v11

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 184
    :cond_7
    if-ne v3, v10, :cond_8

    .line 185
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v8

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    div-float/2addr v7, v11

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_5

    .line 187
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v8

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_5

    .line 195
    :pswitch_14
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v12

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE_PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 196
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v12

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v12

    sub-float v1, v4, v5

    .line 197
    :goto_6
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v5, v1, v11

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_9

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 200
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v12

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v12

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 203
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 204
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 206
    if-ge v3, v10, :cond_a

    .line 207
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 214
    :goto_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v12

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v12

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v11

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 216
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 208
    :cond_a
    if-ne v3, v10, :cond_b

    .line 209
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v9

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    div-float/2addr v7, v11

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_7

    .line 211
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v9

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v9

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_7

    .line 219
    :pswitch_15
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE_PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 220
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v10

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v10

    sub-float v1, v4, v5

    .line 221
    :goto_8
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v5, v1, v11

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_c

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 224
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v10

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 225
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v10

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 227
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v10

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 228
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v10

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 229
    if-ge v3, v10, :cond_d

    .line 230
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 237
    :goto_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v10

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v7, v7, v10

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 238
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    neg-float v5, v5

    div-float/2addr v5, v11

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 231
    :cond_d
    if-ne v3, v10, :cond_e

    .line 232
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v8

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    div-float/2addr v7, v11

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_9

    .line 234
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    aget v6, v6, v8

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_9

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_e
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_7
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 146
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public showDescription()V
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 250
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 251
    .local v0, "showAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 254
    return-void
.end method
