.class public Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLNfcConnectView.java"


# static fields
.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

.field private static final NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

.field private static final NFC_CONNECTING_CANCEL_BTN_WIDTH:I

.field private static final NFC_CONNECTING_CANCEL_BTN_X:I

.field private static final NFC_CONNECTING_CANCEL_BTN_Y:I

.field private static final NFC_CONNECTING_IMAGE_HEIGHT:I

.field private static final NFC_CONNECTING_IMAGE_WIDTH:I

.field private static final NFC_CONNECTING_IMAGE_X:I

.field private static final NFC_CONNECTING_IMAGE_Y:I

.field private static final NFC_CONNECTING_MESSAGE_FONT_SIZE:I

.field private static final NFC_CONNECTING_MESSAGE_HEIGHT:I

.field private static final NFC_CONNECTING_MESSAGE_WIDTH:I

.field private static final NFC_CONNECTING_MESSAGE_X:I

.field private static final NFC_CONNECTING_MESSAGE_Y:I

.field private static final TAG:Ljava/lang/String; = "TwGLNfcConnectView"


# instance fields
.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    .line 40
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    .line 42
    const v0, 0x7f0a0622

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    .line 43
    const v0, 0x7f0a0623

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    .line 44
    const v0, 0x7f0a0624

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    .line 45
    const v0, 0x7f0a0625

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    .line 47
    const v0, 0x7f0a0626

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    .line 48
    const v0, 0x7f0a0627

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    .line 49
    const v0, 0x7f0a0628

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    .line 50
    const v0, 0x7f0a0629

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    .line 51
    const v0, 0x7f0b0035

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    .line 53
    const v0, 0x7f0a062a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    .line 54
    const v0, 0x7f0a062b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    .line 55
    const v0, 0x7f0a062c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    .line 56
    const v0, 0x7f0a062d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    .line 57
    const v0, 0x7f0b0036

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/high16 v10, 0x1040000

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 65
    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 67
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v2

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020451

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 70
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const v7, 0x7f020065

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 78
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0c01b6

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8, v8}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 86
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    int-to-float v3, v3

    const v4, 0x7f02004d

    const v5, 0x7f02004e

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    move v6, v9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    int-to-float v2, v2

    const v3, 0x7f09001b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    return-void
.end method


# virtual methods
.method public hideNfcConnectView()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "hideNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 159
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "arg0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 142
    const-string v0, "TwGLNfcConnectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    .line 145
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "mButton onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 149
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 126
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 133
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 164
    return-void
.end method

.method public resetNfcConnectView()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "resetNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    .line 123
    return-void
.end method

.method public showNfcConnectView()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "showNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 112
    :cond_0
    return-void
.end method
