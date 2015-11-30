.class public Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLModeDescription.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;
    }
.end annotation


# static fields
.field private static final CONTENT_HEIGHT:F

.field private static final CONTENT_POS_X:[F

.field private static final CONTENT_WIDTH:[F

.field private static final DESCRIPTION_FONT_COLOR:I

.field private static final DESCRIPTION_FONT_SIZE:I

.field private static final DESCRIPTION_GROUP_PADDING_HEIGHT:[F

.field private static final DESCRIPTION_GROUP_POS_X:[F

.field private static final DESCRIPTION_GROUP_POS_Y:[F

.field private static final DESCRIPTION_GROUP_WIDTH:[F

.field private static final DESCRIPTION_LINE_HEIGHT:F

.field private static final DESCRIPTION_OFFSET_Y:F

.field private static final DESCRIPTION_TEXT_SHADOW_OFFSET:I

.field private static final DESCRIPTION_TIMEOUT:I = 0x1b58

.field private static final TEXT_STROKE_COLOR:I

.field private static final TEXT_STROKE_WIDTH:I

.field private static final TITLE_DESCRIPTION_PADDING:F

.field private static final TITLE_FONT_SIZE:I

.field private static final TITLE_HEIGHT:F

.field private static final TITLE_POS_Y:[F


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionFontSize:I

.field private mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHideDescription:Ljava/lang/Runnable;

.field public mIsDescriptionHidedByTimeOut:Z

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleFontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v6, [F

    const v1, 0x7f0a009f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a00a0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a00a1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a00a2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    .line 21
    const v0, 0x7f0a00a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    .line 22
    const v0, 0x7f0a00aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    .line 23
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_OFFSET_Y:F

    .line 24
    const v0, 0x7f0a00ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    .line 25
    new-array v0, v6, [F

    const v1, 0x7f0a00a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a00a6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a00a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a00a6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    .line 27
    new-array v0, v6, [F

    const v1, 0x7f0a00a7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a00a8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a00a7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a00a8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    .line 29
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    .line 30
    new-array v0, v6, [F

    const v1, 0x7f0a0097

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a0098

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a0099

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a009a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    .line 32
    new-array v0, v6, [F

    const v1, 0x7f0a009b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a009c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a009d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a009e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    .line 34
    new-array v0, v6, [F

    const v1, 0x7f0a00a3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a00a4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a00a3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a00a4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    .line 36
    new-array v0, v6, [F

    const v1, 0x7f0a00ac

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0a00ad

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a00ac

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a00ad

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    .line 38
    const v0, 0x7f0b0049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    .line 39
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_WIDTH:I

    .line 40
    const v0, 0x7f090001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_COLOR:I

    .line 41
    const v0, 0x7f0b004a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    .line 42
    const v0, 0x7f090012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_COLOR:I

    .line 43
    const v0, 0x7f0b0024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_TEXT_SHADOW_OFFSET:I

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
    .line 65
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    .line 54
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    .line 55
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    .line 57
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "currentLanguage":Ljava/lang/String;
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setCurrentLocaleDescriptionText()V

    .line 70
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 73
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_OFFSET_Y:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 75
    const-string v0, "ar"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ur"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 83
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    sub-float v3, p5, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    add-float/2addr v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f02030e

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 100
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 6
    .param p1, "commandId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "description":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 258
    :goto_0
    :pswitch_0
    return-object v0

    .line 195
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0053

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0055

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    goto :goto_0

    .line 201
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0054

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    goto :goto_0

    .line 204
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0065

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    goto :goto_0

    .line 207
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0052

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    goto :goto_0

    .line 210
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0063

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    goto :goto_0

    .line 213
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0058

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    goto :goto_0

    .line 216
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c005a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    goto :goto_0

    .line 220
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c005d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    goto :goto_0

    .line 223
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0056

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    goto :goto_0

    .line 226
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0060

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    goto :goto_0

    .line 229
    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0057

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    goto/16 :goto_0

    .line 232
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    goto/16 :goto_0

    .line 235
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0059

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    goto/16 :goto_0

    .line 238
    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->getSavedUserSettingValues(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0051

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    goto/16 :goto_0

    .line 246
    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c005c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    goto/16 :goto_0

    .line 249
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c005e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    goto/16 :goto_0

    .line 252
    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    goto/16 :goto_0

    .line 255
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0064

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_f
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_10
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public hideDescription()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    if-eqz v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 185
    .local v0, "hideAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 278
    :cond_0
    return v3
.end method

.method public setCurrentLocaleDescriptionText()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const v1, 0x7f0b003b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    .line 286
    const v1, 0x7f0b003c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    .line 290
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    goto :goto_0
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    .line 104
    return-void
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V
    .locals 11
    .param p1, "bundle"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p2, "orientation"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "description":Ljava/lang/String;
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "rows":I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    packed-switch p2, :pswitch_data_0

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->showDescription()V

    .line 167
    return-void

    .line 115
    :pswitch_0
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v6

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v6

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 122
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v6

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v6

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f02030e

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto :goto_0

    .line 127
    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v9

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v9

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 135
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f02030d

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto/16 :goto_0

    .line 139
    :pswitch_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v10

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v10

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v10

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v10

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f02030f

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto/16 :goto_0

    .line 151
    :pswitch_3
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v8

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v8

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v8

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v8

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    neg-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f02030c

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    goto/16 :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showDescription()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 172
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 173
    .local v0, "showAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method
