.class public Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLBatteryIndicator.java"


# static fields
.field private static final BATTERY_INDICATOR_ALIGN:I

.field private static final BATTERY_INDICATOR_HEIGHT:I

.field private static final BATTERY_INDICATOR_ICON_POS_X:I

.field private static final BATTERY_INDICATOR_TEXT_HEIGHT:I

.field private static final BATTERY_INDICATOR_TEXT_POS_X:I

.field private static final BATTERY_INDICATOR_TEXT_SHADOW_OFFSET_FOR_TFT_LCD:I

.field private static final BATTERY_INDICATOR_TEXT_SHADOW_RADIUS_FOR_TFT_LCD:I

.field private static final BATTERY_INDICATOR_TEXT_SIZE:I

.field private static final BATTERY_INDICATOR_TEXT_STROKE_COLOR:I

.field private static final BATTERY_INDICATOR_TEXT_STROKE_WIDTH:F

.field private static final BATTERY_INDICATOR_TEXT_WIDTH:I

.field public static final CHARGING:I = 0x3

.field private static final DISCAHRGING_IMAGE:[I

.field public static final DISCHARGING:I = 0x4

.field public static final DISCHARGING_LEVEL_0:I = 0x0

.field public static final DISCHARGING_LEVEL_100:I = 0x7

.field public static final DISCHARGING_LEVEL_15:I = 0x1

.field public static final DISCHARGING_LEVEL_28:I = 0x2

.field public static final DISCHARGING_LEVEL_43:I = 0x3

.field public static final DISCHARGING_LEVEL_57:I = 0x4

.field public static final DISCHARGING_LEVEL_71:I = 0x5

.field public static final DISCHARGING_LEVEL_85:I = 0x6

.field public static final DISCHARGING_LEVEL_MAX:I = 0x8

.field public static final LEVEL_0_TO_4:I = 0x0

.field public static final LEVEL_16_TO_28:I = 0x2

.field public static final LEVEL_5_TO_15:I = 0x1

.field public static final LEVEL_INVISIBLE:I = 0x5

.field public static final MAX_LEVEL:I = 0x4


# instance fields
.field private mBatteryStr:Lcom/sec/android/glview/TwGLText;

.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0a03b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_HEIGHT:I

    .line 34
    const v0, 0x7f0a00b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    .line 35
    const v0, 0x7f0a00b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_POS_X:I

    .line 36
    const v0, 0x7f0a03b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_HEIGHT:I

    .line 37
    const v0, 0x7f0a03b2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_WIDTH:I

    .line 38
    const v0, 0x7f0b004c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_SIZE:I

    .line 39
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_STROKE_WIDTH:F

    .line 40
    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_STROKE_COLOR:I

    .line 42
    const v0, 0x7f0b0020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_SHADOW_OFFSET_FOR_TFT_LCD:I

    .line 43
    const v0, 0x7f0b0021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_SHADOW_RADIUS_FOR_TFT_LCD:I

    .line 45
    const v0, 0x7f0b003f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ALIGN:I

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->DISCAHRGING_IMAGE:[I

    return-void

    :array_0
    .array-data 4
        0x7f0204a7
        0x7f0204a9
        0x7f0204aa
        0x7f0204ab
        0x7f0204ac
        0x7f0204ad
        0x7f0204ae
        0x7f0204a8
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 11
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    .line 61
    const v0, 0x7f0b000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v9, 0x1

    .line 62
    .local v9, "textUseShadow":Z
    :goto_0
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_HEIGHT:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f09000b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ALIGN:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_STROKE_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 70
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f020495

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 71
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f02049c

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 72
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f020498

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 73
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f02049d

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 74
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f0204a7

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 77
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/4 v0, 0x4

    if-gt v10, v0, :cond_1

    .line 78
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 77
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 61
    .end local v9    # "textUseShadow":Z
    .end local v10    # "i":I
    :cond_0
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 80
    .restart local v9    # "textUseShadow":Z
    .restart local v10    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setBatteryStr(IZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "isDisplay"    # Z

    .prologue
    const/4 v1, 0x4

    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_0
    const/16 v0, 0x1d

    if-ge p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 83
    if-ltz p1, :cond_0

    if-le p1, v2, :cond_1

    .line 84
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_2

    .line 86
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 94
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_2
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setLevel(II)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "dischargingLevel"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 101
    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    .line 102
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_3

    .line 104
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 111
    if-ne p1, v4, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->DISCAHRGING_IMAGE:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 114
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 115
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_3
    :goto_1
    return-void

    .line 116
    :catch_0
    move-exception v1

    goto :goto_1
.end method
