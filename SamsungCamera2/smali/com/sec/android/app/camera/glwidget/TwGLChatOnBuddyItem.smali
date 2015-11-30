.class public Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLChatOnBuddyItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I

.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I

.field private static final ICON_IMAGE_HEIGHT:I

.field private static final ICON_IMAGE_WIDTH:I

.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I

.field private static final LIST_TYPE_BUTTON_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_Y_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

.field private static final LIST_TYPE_BUTTON_WIDTH:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE_SWA:I

.field private static final LIST_TYPE_TEXT_HEIGHT:I

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final LIST_TYPE_TEXT_WIDTH:I

.field private static final SEPARATOR_HEIGHT:I

.field private static final SEPARATOR_POS_X:I

.field public static final TITLE_HEIGHT:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mBuddyName:Lcom/sec/android/glview/TwGLText;

.field public mButton:Lcom/sec/android/glview/TwGLButton;

.field private mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

.field public mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

.field private mDim:Z

.field private mIcon:Lcom/sec/android/glview/TwGLImage;

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0a0166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    .line 42
    const v0, 0x7f0a0167

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 43
    const v0, 0x7f0a0168

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 44
    const v0, 0x7f0a0169

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 45
    const v0, 0x7f0a016e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_X:I

    .line 46
    const v0, 0x7f0a016f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 47
    const v0, 0x7f0a0170

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 48
    const v0, 0x7f0a0171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 49
    const v0, 0x7f0b0056

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    .line 50
    const v0, 0x7f0b0033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_FONT_SIZE_SWA:I

    .line 51
    const v0, 0x7f0a0265

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_WIDTH:I

    .line 52
    const v0, 0x7f0a0266

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_HEIGHT:I

    .line 53
    const v0, 0x7f0a016a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

    .line 54
    const v0, 0x7f0a016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

    .line 55
    const v0, 0x7f0a016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

    .line 56
    const v0, 0x7f0a016d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

    .line 57
    const v0, 0x7f0a043b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y_PADDING:I

    .line 59
    const v0, 0x7f0a026a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    .line 60
    const v0, 0x7f0a026b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_POS_Y:I

    .line 61
    const v0, 0x7f0a026c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    .line 62
    const v0, 0x7f0a026d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_POS_X:I

    .line 63
    const v0, 0x7f0a0153

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->TITLE_HEIGHT:I

    .line 65
    const v0, 0x7f09000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;IFF)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "target"    # Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;
    .param p3, "position"    # I
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDim:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    .line 82
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 83
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->initContents()V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->setContentType()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    const/4 v7, 0x0

    const v4, 0x7f0203da

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 75
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDim:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    .line 90
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    .line 92
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 104
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->clear()V

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 111
    :cond_1
    return-void
.end method

.method private initContents()V
    .locals 17

    .prologue
    .line 114
    const/16 v16, 0x0

    .line 115
    .local v16, "width":F
    const/4 v15, 0x0

    .line 116
    .local v15, "height":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_6

    .line 117
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->getHeight()F

    move-result v6

    const v7, 0x7f0203da

    const v8, 0x7f0203da

    const v9, 0x7f0203da

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 118
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDim:Z

    if-nez v1, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 123
    .end local v16    # "width":F
    .local v5, "width":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .line 125
    .end local v15    # "height":F
    .local v6, "height":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

    invoke-direct {v2, v3, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    .line 129
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "username":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 133
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_FONT_SIZE_SWA:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 138
    .end local v7    # "username":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v1, :cond_3

    .line 139
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->isSelected()Z

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/Camera;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setBypassTouch(Z)V

    .line 142
    :cond_3
    new-instance v8, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    int-to-float v13, v1

    const v14, 0x7f0204cd

    move v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 143
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y_PADDING:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    const v8, 0x7f02030b

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    .line 144
    return-void

    .line 136
    .restart local v7    # "username":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto :goto_2

    .end local v5    # "width":F
    .end local v6    # "height":F
    .end local v7    # "username":Ljava/lang/String;
    .restart local v15    # "height":F
    .restart local v16    # "width":F
    :cond_5
    move v6, v15

    .end local v15    # "height":F
    .restart local v6    # "height":F
    move/from16 v5, v16

    .end local v16    # "width":F
    .restart local v5    # "width":F
    goto/16 :goto_0

    .end local v5    # "width":F
    .end local v6    # "height":F
    .restart local v15    # "height":F
    .restart local v16    # "width":F
    :cond_6
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
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->clearContent()V

    .line 97
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 98
    return-void
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v1, 0x1

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 202
    return v1

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->getRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 191
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 195
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    .line 197
    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCheckBox(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iput-boolean p1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 251
    :cond_0
    return-void
.end method

.method public setContentType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 185
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    const/4 v1, 0x0

    .line 212
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 232
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 233
    return-void

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method
