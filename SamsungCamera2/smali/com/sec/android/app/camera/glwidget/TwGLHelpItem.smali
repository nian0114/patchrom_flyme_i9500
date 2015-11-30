.class public Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLHelpItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final BOTTOM_PADDING:I

.field private static final DESCRIPTION_COLOR:I

.field private static final DESCRIPTION_ICON_RIGHT_PADDING:I

.field private static final DESCRIPTION_ICON_WIDTH:I

.field private static final DESCRIPTION_TEXT_STROKE_COLOR:I

.field private static final FONT_SIZE:F

.field public static final ITEM_BOTTOM_PADDING:I = 0x2

.field public static final ITEM_NO_PADDING:I = 0x0

.field public static final ITEM_TOP_AND_BOTTOM_PADDING:I = 0x3

.field private static final ITEM_TOP_BOTTOM_PADDING:I

.field public static final ITEM_TOP_PADDING:I = 0x1

.field private static final LEFT_PADDING:I

.field public static final ONLY_DESCRIPTION_TYPE:I = 0x0

.field private static final POINT_POS_X:I

.field private static final POINT_POS_Y:I

.field private static final RIGHT_PADDING:I

.field private static final SUBTITLE_TEXT_STROKE_COLOR:I

.field private static final TEXT_HEIGHT:I

.field private static final TEXT_STROKE_WIDTH:I

.field private static final TITLE_COLOR:I

.field private static final TOP_PADDING:I

.field public static final WITH_SUB_TITLE_AND_DESCRIPTION_ICON_TYPE:I = 0x2

.field public static final WITH_SUB_TITLE_TYPE:I = 0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

.field private mDescriptionString:Ljava/lang/String;

.field private mDescriptionType:I

.field private mItemPaddingPosition:I

.field private mItemSubTitle:Lcom/sec/android/glview/TwGLText;

.field private mPoint:Lcom/sec/android/glview/TwGLImage;

.field private mResId:I

.field private mSubTitleRowsRequired:I

.field private mSubTitleString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f0a037f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    .line 17
    const v0, 0x7f0a0380

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    .line 18
    const v0, 0x7f0a0381

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    .line 19
    const v0, 0x7f0a0382

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    .line 20
    const v0, 0x7f0a0383

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    .line 21
    const v0, 0x7f0a0384

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_X:I

    .line 22
    const v0, 0x7f0a0385

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_Y:I

    .line 23
    const v0, 0x7f0a0386

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    .line 24
    const v0, 0x7f0a0387

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    .line 25
    const v0, 0x7f0a0388

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    .line 26
    const v0, 0x7f0b0026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    .line 27
    const v0, 0x7f090004

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    .line 28
    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    .line 29
    const v0, 0x7f0b006c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    .line 30
    const v0, 0x7f090015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    .line 31
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;I)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "itemPaddingPosition"    # I
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "descriptionType"    # I

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 42
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 43
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 60
    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 61
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 62
    invoke-direct {p0, p8, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "itemPaddingPosition"    # I
    .param p7, "subTitle"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "descriptionType"    # I

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 69
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 71
    iput p9, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 72
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 73
    invoke-direct {p0, p9, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "itemPaddingPosition"    # I
    .param p7, "subTitle"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "resId"    # I
    .param p10, "descriptionType"    # I

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 79
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 80
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 81
    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 82
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 83
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 84
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 85
    move/from16 v0, p10

    invoke-direct {p0, v0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 86
    return-void
.end method

.method private initContent(II)V
    .locals 11
    .param p1, "descriptionType"    # I
    .param p2, "itemPaddingPosition"    # I

    .prologue
    .line 91
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    int-to-float v3, v0

    .line 92
    .local v3, "currentY":F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    .line 94
    .local v4, "contentWidth":F
    packed-switch p1, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 96
    :pswitch_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 97
    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v10

    .line 101
    .local v10, "rowsRequired":I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v9, v0, v10

    .line 102
    .local v9, "heightRequired":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_4

    .line 103
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 110
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 111
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 112
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 113
    :cond_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setSize(FF)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 118
    .end local v9    # "heightRequired":I
    .end local v10    # "rowsRequired":I
    :pswitch_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 119
    :cond_5
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 122
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v9, v0, v1

    .line 124
    .restart local v9    # "heightRequired":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_7

    .line 125
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_X:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_Y:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    const v6, 0x7f0200ab

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_a

    .line 131
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 138
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v10

    .line 141
    .restart local v10    # "rowsRequired":I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v9, v0, v10

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 149
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 150
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 151
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 152
    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    .line 153
    :cond_8
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 155
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setSize(FF)V

    goto/16 :goto_0

    .line 135
    .end local v10    # "rowsRequired":I
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_2

    .line 147
    .restart local v10    # "rowsRequired":I
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    .line 158
    .end local v9    # "heightRequired":I
    .end local v10    # "rowsRequired":I
    :pswitch_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x3

    if-ne p2, v0, :cond_d

    .line 159
    :cond_c
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 161
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 162
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v9, v0, v1

    .line 164
    .restart local v9    # "heightRequired":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_e

    .line 165
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_X:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_Y:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    const v6, 0x7f0200ab

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 170
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_12

    .line 171
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 177
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 178
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_f

    .line 181
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 186
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v10

    .line 187
    .restart local v10    # "rowsRequired":I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v9, v0, v10

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_13

    .line 189
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    add-int/2addr v2, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 195
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 196
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 197
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 198
    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    .line 199
    :cond_10
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 201
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setSize(FF)V

    goto/16 :goto_0

    .line 175
    .end local v10    # "rowsRequired":I
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto/16 :goto_4

    .line 193
    .restart local v10    # "rowsRequired":I
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_5

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    const/4 v1, 0x0

    .line 229
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 241
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 242
    return-void

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public declared-synchronized setWidth(F)V
    .locals 5
    .param p1, "width"    # F

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setWidth(F)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_1

    .line 212
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 214
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 215
    .local v0, "beforeRowsRequired":I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 216
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    if-eq v1, v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->translate(FF)V

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    .end local v0    # "beforeRowsRequired":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
