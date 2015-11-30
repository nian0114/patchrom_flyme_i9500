.class public Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLQuickSettingSubMenu.java"


# static fields
.field public static final QUICKSETTING_MENU_BOX_HEIGHT:I

.field public static final QUICKSETTING_MENU_BOX_ITEM_POS_X:I

.field public static final QUICKSETTING_MENU_BOX_LINE_POS_X:I

.field public static final QUICKSETTING_MENU_BOX_LINE_POS_Y:I

.field public static final QUICKSETTING_MENU_BOX_WIDTH:I

.field public static final QUICKSETTING_SUBMENU_POS_X:I

.field protected static final TAG:Ljava/lang/String; = "TwGLQuickSettingSubMenu"


# instance fields
.field private mQuickSettingSubMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mQuickSettingSubMenuLine:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0a01e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_WIDTH:I

    .line 30
    const v0, 0x7f0a01e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_HEIGHT:I

    .line 31
    const v0, 0x7f0a01e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_LINE_POS_X:I

    .line 32
    const v0, 0x7f0a01e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_LINE_POS_Y:I

    .line 33
    const v0, 0x7f0a01e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_ITEM_POS_X:I

    .line 34
    const v0, 0x7f0a01e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_SUBMENU_POS_X:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 6
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 42
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->mQuickSettingSubMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->mQuickSettingSubMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f02022f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 44
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_LINE_POS_X:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->QUICKSETTING_MENU_BOX_LINE_POS_Y:I

    int-to-float v2, v2

    const v3, 0x7f020230

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->mQuickSettingSubMenuLine:Lcom/sec/android/glview/TwGLImage;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->setClipping(Z)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->mQuickSettingSubMenuLine:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->mQuickSettingSubMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 50
    return-void
.end method
