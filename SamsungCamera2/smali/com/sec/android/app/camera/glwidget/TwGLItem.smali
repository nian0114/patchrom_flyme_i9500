.class public Lcom/sec/android/app/camera/glwidget/TwGLItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I

.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I

.field private static final EASYMODE_QUICKSETTING_TYPE_BUTTON_HEIGHT:I

.field private static final EASYMODE_QUICKSETTING_TYPE_BUTTON_WIDTH:I

.field public static final EASYMODE_TYPE:I = 0x5

.field private static final EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE:I

.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE_SWA:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I

.field public static final LIST_TYPE:I = 0x0

.field private static final LIST_TYPE_BUTTON_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final LIST_TYPE_BUTTON_WIDTH:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE_SWA:I

.field private static final LIST_TYPE_TEXT_HEIGHT:I

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final LIST_TYPE_TEXT_WIDTH:I

.field public static final QUICKSETTING_TYPE:I = 0x2

.field private static final QUICKSETTING_TYPE_BUTTON_HEIGHT:I

.field private static final QUICKSETTING_TYPE_BUTTON_WIDTH:I

.field private static final ROTATE_ANIMATION_DURATION:I = 0x12c

.field private static final SEPARATOR_HEIGHT:I

.field private static final SEPARATOR_POS_X:I

.field public static final SETTINGS_TYPE:I = 0x3

.field private static final SETTING_TYPE_BUTTON_HEIGHT:I

.field private static final SETTING_TYPE_BUTTON_WIDTH:I

.field private static final SETTING_TYPE_DATA_HEIGHT:I

.field private static final SETTING_TYPE_DATA_POS_X:I

.field private static final SETTING_TYPE_DATA_POS_Y:I

.field private static final SETTING_TYPE_DATA_WIDTH:I

.field private static final SETTING_TYPE_TEXT_POS_X:I

.field private static final SETTING_TYPE_TEXT_POS_Y:I

.field private static final SETTING_TYPE_TEXT_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLItem"

.field public static final THUMBNAIL_TYPE:I = 0x4

.field private static final THUMBNAIL_TYPE_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN:I

.field private static final THUMBNAIL_TYPE_BUTTON_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_HEIGHT:I

.field private static final THUMBNAIL_TYPE_TEXT_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_X:I

.field private static final THUMBNAIL_TYPE_TEXT_Y:I

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

.field private mDimmed:Z

.field private mSelected:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

.field private mToggle:Z

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    const v1, 0x7f0a0166

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    .line 52
    const v1, 0x7f0a0167

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 53
    const v1, 0x7f0a0168

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 54
    const v1, 0x7f0a0169

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 55
    const v1, 0x7f0a016e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    .line 56
    const v1, 0x7f0a016f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 57
    const v1, 0x7f0a0170

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 58
    const v1, 0x7f0a0171

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 59
    const v1, 0x7f0b0056

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    .line 60
    const v1, 0x7f0b0033

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE_SWA:I

    .line 61
    const v1, 0x7f0a0173

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    .line 62
    const v1, 0x7f0a0174

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    .line 63
    const v1, 0x7f0a0177

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    .line 64
    const v1, 0x7f0a0178

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    .line 65
    const v1, 0x7f0a0179

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    .line 66
    const v1, 0x7f0a0175

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    .line 67
    const v1, 0x7f0a0176

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    .line 68
    const v1, 0x7f0a017b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    .line 69
    const v1, 0x7f0a017c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    .line 70
    const v1, 0x7f0a017a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    .line 71
    const v1, 0x7f0a017d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    .line 72
    const v1, 0x7f0a000d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->QUICKSETTING_TYPE_BUTTON_WIDTH:I

    .line 73
    const v1, 0x7f0a000f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->QUICKSETTING_TYPE_BUTTON_HEIGHT:I

    .line 74
    const v1, 0x7f0a0210

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_QUICKSETTING_TYPE_BUTTON_WIDTH:I

    .line 75
    const v1, 0x7f0a0211

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_QUICKSETTING_TYPE_BUTTON_HEIGHT:I

    .line 76
    const v1, 0x7f0a017e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    .line 77
    const v1, 0x7f0a017f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    .line 78
    const v1, 0x7f0a0180

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    .line 79
    const v1, 0x7f0a0181

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 80
    const v1, 0x7f0a0182

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    .line 81
    const v1, 0x7f0a0183

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    .line 82
    const v1, 0x7f0a0184

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    .line 83
    const v1, 0x7f0a0185

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    .line 84
    const v1, 0x7f0b0057

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    .line 85
    const v1, 0x7f0b0031

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE_SWA:I

    .line 86
    const v1, 0x7f0b0029

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    .line 87
    const v0, 0x7f0a0186

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    .line 88
    const v0, 0x7f0a0187

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    .line 90
    const v0, 0x7f0a01cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    .line 91
    const v0, 0x7f0a01cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    .line 92
    const v0, 0x7f0a01ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    .line 93
    const v0, 0x7f0a01d2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    .line 94
    const v0, 0x7f0a01d3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    .line 95
    const v0, 0x7f0a01d0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    .line 96
    const v0, 0x7f0a01d1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    .line 98
    const v0, 0x7f09000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8, "type"    # I

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 159
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 160
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 167
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 168
    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p5, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p6, "type"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 142
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 114
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 125
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 126
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 127
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 143
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 144
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 145
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 152
    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 3
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p3, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p4, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 125
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 127
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 131
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 132
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 133
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 135
    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 136
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    const v4, 0x7f0203da

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 125
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 126
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 127
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 176
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 179
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    .line 182
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->clear()V

    .line 310
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 315
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 320
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->clear()V

    .line 325
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    .line 330
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->clear()V

    .line 335
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .line 337
    :cond_5
    return-void
.end method

.method private diableDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDraggable(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDraggable(Z)V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDraggable(Z)V

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDraggable(Z)V

    .line 201
    :cond_4
    return-void
.end method

.method private initContents(I)V
    .locals 17
    .param p1, "type"    # I

    .prologue
    .line 359
    const/16 v16, 0x0

    .line 360
    .local v16, "width":F
    const/4 v15, 0x0

    .line 362
    .local v15, "height":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 364
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v1, :cond_7

    .line 365
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 371
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 374
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v1, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 377
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_14

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 379
    .end local v16    # "width":F
    .local v5, "width":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .line 435
    .end local v15    # "height":F
    .local v6, "height":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_1

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, "title":Ljava/lang/String;
    :goto_2
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 441
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 448
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 449
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    .line 452
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-nez v1, :cond_3

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 453
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 454
    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    int-to-float v12, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v14

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    .line 465
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setBypassTouch(Z)V

    .line 467
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_4

    .line 468
    new-instance v8, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v13, v1

    const v14, 0x7f0204cd

    move v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 471
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_5

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    .line 474
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_6

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    .line 478
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setObjectTag(I)V

    .line 479
    return-void

    .line 368
    .end local v5    # "width":F
    .end local v6    # "height":F
    .restart local v15    # "height":F
    .restart local v16    # "width":F
    :cond_7
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    .line 381
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_b

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_b

    .line 382
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v1, :cond_a

    .line 383
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 389
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V

    .line 393
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v1, :cond_9

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 396
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_14

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 398
    .end local v16    # "width":F
    .restart local v5    # "width":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .end local v15    # "height":F
    .restart local v6    # "height":F
    goto/16 :goto_1

    .line 386
    .end local v5    # "width":F
    .end local v6    # "height":F
    .restart local v15    # "height":F
    .restart local v16    # "width":F
    :cond_a
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_5

    .line 400
    :cond_b
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_e

    .line 401
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_c

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 406
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    .restart local v7    # "title":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setTitle(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setExtraDescription(Z)V

    .line 412
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v6, v8

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    .end local v7    # "title":Ljava/lang/String;
    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v11

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setRotatable(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setCenterPivot(Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move v6, v15

    .end local v15    # "height":F
    .restart local v6    # "height":F
    move/from16 v5, v16

    .line 417
    .end local v16    # "width":F
    .restart local v5    # "width":F
    goto/16 :goto_1

    .line 406
    .end local v5    # "width":F
    .end local v6    # "height":F
    .restart local v15    # "height":F
    .restart local v16    # "width":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 418
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v1, :cond_10

    .line 419
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 423
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 426
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_f

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 429
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v1, :cond_14

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v5

    .line 431
    .end local v16    # "width":F
    .restart local v5    # "width":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v6

    .end local v15    # "height":F
    .restart local v6    # "height":F
    goto/16 :goto_1

    .line 421
    .end local v5    # "width":F
    .end local v6    # "height":F
    .restart local v15    # "height":F
    .restart local v16    # "width":F
    :cond_10
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    goto :goto_7

    .line 436
    .end local v15    # "height":F
    .end local v16    # "width":F
    .restart local v5    # "width":F
    .restart local v6    # "height":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 444
    .restart local v7    # "title":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_3

    .line 459
    .end local v7    # "title":Ljava/lang/String;
    :cond_13
    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    int-to-float v12, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v14

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    goto/16 :goto_4

    .end local v5    # "width":F
    .end local v6    # "height":F
    .restart local v15    # "height":F
    .restart local v16    # "width":F
    :cond_14
    move v6, v15

    .end local v15    # "height":F
    .restart local v6    # "height":F
    move/from16 v5, v16

    .end local v16    # "width":F
    .restart local v5    # "width":F
    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/glview/TwGLView;)V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clearContent()V

    .line 300
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 301
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 302
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 303
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 304
    return-void
.end method

.method public getButtonType()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    .line 351
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    return v0
.end method

.method public getSelected()Z
    .locals 2

    .prologue
    .line 918
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getSelected()Z

    move-result v0

    .line 921
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    goto :goto_0
.end method

.method public isDim()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    return v0
.end method

.method public onButtonHighlightChanged(Z)V
    .locals 2
    .param p1, "isHighlighted"    # Z

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_0

    .line 905
    if-eqz p1, :cond_1

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 794
    const/4 v2, 0x1

    .line 795
    .local v2, "result":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_0

    move v3, v4

    .line 858
    :goto_0
    return v3

    .line 796
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 797
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 799
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v6, :cond_3

    move v3, v4

    .line 800
    goto :goto_0

    .line 803
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 804
    const-string v3, "TwGLItem"

    const-string v5, "return isStartPreview"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 805
    goto :goto_0

    .line 808
    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 810
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 812
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 813
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->setSelectedMenuId(I)V

    .line 816
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v5, 0x24

    if-ne v3, v5, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    .line 817
    goto :goto_0

    .line 821
    :cond_6
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v3, :cond_7

    .line 823
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    .line 824
    .local v1, "menuid":I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 825
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    .line 826
    goto/16 :goto_0

    .line 829
    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    .end local v1    # "menuid":I
    :cond_7
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_a

    .line 831
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x1b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 833
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_8

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move v3, v4

    .line 834
    goto/16 :goto_0

    :cond_9
    move-object v3, v0

    .line 836
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 837
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setSelectedSettingMenuId(I)V

    .line 838
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_a

    .line 839
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 840
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setSelected(Z)V

    .line 841
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    .line 849
    :cond_a
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_b

    .line 850
    const-string v3, "TwGLItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execute Menu!!!!, CurrentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 852
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 853
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    .line 856
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v2

    :cond_b
    move v3, v2

    .line 858
    goto/16 :goto_0

    .line 843
    :cond_c
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setSelected(Z)V

    .line 844
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    goto :goto_1
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getMatrix()[F

    move-result-object v2

    .line 641
    .local v2, "matrix":[F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 642
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getRotatable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 644
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 648
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    .line 650
    :cond_1
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 788
    const/4 v0, 0x1

    .line 790
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 750
    const/4 v0, 0x1

    .line 762
    :goto_0
    return v0

    .line 753
    :cond_0
    const/4 v0, 0x0

    .line 754
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 756
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 759
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 769
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    .line 772
    :cond_0
    const/4 v0, 0x0

    .line 773
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 775
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 778
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 775
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v2, :cond_1

    .line 691
    :cond_0
    const/4 v2, 0x1

    .line 707
    :goto_0
    return v2

    .line 694
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v2, :cond_2

    .line 695
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 698
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 700
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 701
    .local v0, "id":I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 702
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_3

    .line 703
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 704
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_4

    .line 705
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 707
    .end local v0    # "id":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetSettingsText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setSelected(Z)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    .line 890
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setAlpha(F)V

    .line 292
    :cond_3
    return-void
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .param p1, "anchor"    # Lcom/sec/android/glview/TwGLImage;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 205
    return-void
.end method

.method public setContentType(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 482
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, p1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 492
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 493
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 494
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    .line 496
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_3

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 502
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_4

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 512
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_9

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 515
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 519
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 521
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 530
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 630
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 631
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSize()V

    goto/16 :goto_0

    .line 518
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto :goto_1

    .line 526
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_2

    .line 540
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v3, :cond_b

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 547
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 551
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_3

    .line 550
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto :goto_4

    .line 561
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setSize(FF)V

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMargin(IIII)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_3

    .line 566
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v6, :cond_10

    .line 567
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 572
    :goto_5
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 583
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 587
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6, v5}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 595
    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_3

    .line 570
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto/16 :goto_5

    .line 578
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 591
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    goto :goto_7

    .line 604
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v5, :cond_12

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_11

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->QUICKSETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->QUICKSETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f0a0010

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0a0011

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 612
    :cond_11
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 613
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 614
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    .line 615
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_3

    .line 616
    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_13

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_QUICKSETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_QUICKSETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f0a0010

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0a0011

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 624
    :cond_13
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 625
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 626
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    .line 627
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_3
.end method

.method public setDim(Z)V
    .locals 4
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 215
    if-eqz p1, :cond_5

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_1

    .line 217
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 250
    :cond_4
    :goto_0
    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_7

    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_6

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 237
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_8

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    .line 245
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 258
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setMute(Z)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMute(Z)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x1

    .line 863
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getButton()Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setNextFocusUpId(I)V

    .line 871
    :goto_0
    return v0

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    goto :goto_0

    .line 871
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .prologue
    const/4 v1, 0x0

    .line 712
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-nez v0, :cond_7

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_4

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 724
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 744
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 745
    return-void

    .line 729
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 731
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 733
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 735
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 737
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_c

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 739
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 741
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    const/4 v1, 0x0

    .line 654
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_7

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_4

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 666
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 668
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 686
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 687
    return-void

    .line 671
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 673
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 675
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 677
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 679
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_c

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 681
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 683
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 914
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 915
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setToggleButton()V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->setToggleButton()V

    .line 900
    :cond_1
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 209
    return-void
.end method
