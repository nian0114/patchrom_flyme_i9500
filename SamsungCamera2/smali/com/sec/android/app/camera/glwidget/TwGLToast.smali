.class public Lcom/sec/android/app/camera/glwidget/TwGLToast;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;
    }
.end annotation


# static fields
.field private static DEFAULT_PADDING:I = 0x0

.field private static final DEFAULT_PADDING_LEFT_RIGHT:I

.field private static final DEFAULT_PADDING_UP_DOWN:I

.field private static final DEFAULT_TEXT_MAX_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field public static final TOAST_LENGTH_HALF:I = 0xbb8

.field public static final TOAST_LENGTH_INFINITE:I = -0x1

.field public static final TOAST_LENGTH_LONG:I = 0x1388

.field public static final TOAST_LENGTH_SHORT:I = 0x5dc


# instance fields
.field private mAnimationEnable:Z

.field private mDuration:I

.field private mH_Align:I

.field private mHideToast:Ljava/lang/Runnable;

.field private mMax_Width:I

.field private mMessage:Lcom/sec/android/glview/TwGLStringTexture;

.field private mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

.field private mParentView:Lcom/sec/android/glview/TwGLView;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:I

.field private mV_Align:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_WIDTH:I

    .line 19
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_HEIGHT:I

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    .line 28
    const v0, 0x7f0a042b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    .line 29
    const v0, 0x7f0a042c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    .line 31
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;I)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "rId"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 119
    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;II)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "rId"    # I
    .param p3, "textsize"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 127
    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 128
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;III)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "rId"    # I
    .param p3, "textsize"    # I
    .param p4, "textcolor"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 136
    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 137
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 138
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIII)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "rId"    # I
    .param p3, "textsize"    # I
    .param p4, "textcolor"    # I
    .param p5, "maxwidth"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 147
    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 148
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 149
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 150
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 152
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIIII)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "rId"    # I
    .param p3, "textsize"    # I
    .param p4, "textcolor"    # I
    .param p5, "maxwidth"    # I
    .param p6, "duration"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 158
    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 159
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 160
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 161
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 162
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 68
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;I)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textsize"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 76
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;II)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textsize"    # I
    .param p4, "textcolor"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 85
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 87
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;III)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textsize"    # I
    .param p4, "textcolor"    # I
    .param p5, "maxwidth"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 96
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 97
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 98
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 99
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textsize"    # I
    .param p4, "textcolor"    # I
    .param p5, "maxwidth"    # I
    .param p6, "duration"    # I

    .prologue
    const/16 v2, 0xd7

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 40
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    .line 107
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 108
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 109
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 110
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    .line 111
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLToast;)Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLToast;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    return-object v0
.end method

.method private declared-synchronized initContent()V
    .locals 17

    .prologue
    .line 210
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setVisibility(I)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_1
    :try_start_1
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .local v14, "mPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    .line 224
    .local v13, "mMetrics":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v16, v1, v2

    .line 225
    .local v16, "mStringWidth":I
    iget v1, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v15, v1, v2

    .line 227
    .local v15, "mStringHeight":I
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v15

    const/4 v7, 0x2

    const/4 v8, 0x2

    const-string v9, ""

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;FI)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setDynamicHeight(F)V

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setSize(FF)V

    .line 239
    const v1, 0x7f0204d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setNinePatchBackground(I)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 243
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setToastAlign(II)V

    .line 245
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setRotatable(Z)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 210
    .end local v13    # "mMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v14    # "mPaint":Landroid/graphics/Paint;
    .end local v15    # "mStringHeight":I
    .end local v16    # "mStringWidth":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateContent()V
    .locals 17

    .prologue
    .line 252
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setVisibility(I)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_1
    :try_start_1
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 259
    .local v14, "mPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    .line 266
    .local v13, "mMetrics":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v16, v1, v2

    .line 267
    .local v16, "mStringWidth":I
    iget v1, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v15, v1, v2

    .line 269
    .local v15, "mStringHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    if-nez v1, :cond_2

    .line 270
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v15

    const/4 v7, 0x2

    const/4 v8, 0x2

    const-string v9, ""

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    .line 275
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;FI)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setDynamicHeight(F)V

    .line 281
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setSize(FF)V

    .line 283
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setToastAlign(II)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 252
    .end local v13    # "mMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v14    # "mPaint":Landroid/graphics/Paint;
    .end local v15    # "mStringHeight":I
    .end local v16    # "mStringWidth":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 429
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    invoke-interface {v0, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;->onToastDisplay(Lcom/sec/android/app/camera/glwidget/TwGLToast;I)V

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    if-eqz v0, :cond_3

    .line 398
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 399
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 413
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->startAnimation()V

    goto :goto_0

    .line 415
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setAnimation(Landroid/view/animation/Animation;)V

    .line 416
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    invoke-interface {v0, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;->onToastDisplay(Lcom/sec/android/app/camera/glwidget/TwGLToast;I)V

    goto :goto_0
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .param p1, "animationEnable"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    .line 437
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    .line 291
    return-void
.end method

.method public setOnToastDisplayListener(Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    .line 56
    return-void
.end method

.method public setParentView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "parentView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 433
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "rId"    # I

    .prologue
    .line 189
    invoke-static {p1}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    .line 192
    return-void
.end method

.method public setText(II)V
    .locals 1
    .param p1, "rId"    # I
    .param p2, "textsize"    # I

    .prologue
    .line 195
    invoke-static {p1}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 196
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 198
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    .line 199
    return-void
.end method

.method public setText(III)V
    .locals 1
    .param p1, "rId"    # I
    .param p2, "textsize"    # I
    .param p3, "textcolor"    # I

    .prologue
    .line 202
    invoke-static {p1}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 203
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 204
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 206
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    .line 207
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    .line 171
    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textsize"    # I

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 175
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    .line 178
    return-void
.end method

.method public setText(Ljava/lang/String;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textsize"    # I
    .param p3, "textcolor"    # I

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    .line 182
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    .line 183
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    .line 186
    return-void
.end method

.method public setToastAlign(II)V
    .locals 11
    .param p1, "h_align"    # I
    .param p2, "v_align"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 294
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    .line 295
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    .line 297
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_WIDTH:I

    .line 298
    .local v4, "mScreen_Width":I
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_HEIGHT:I

    .line 300
    .local v3, "mScreen_Height":I
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    if-eqz v8, :cond_0

    .line 301
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    float-to-int v4, v8

    .line 302
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    float-to-int v3, v8

    .line 305
    :cond_0
    const/4 v0, 0x0

    .local v0, "mLeft_0":I
    const/4 v5, 0x0

    .line 306
    .local v5, "mTop_0":I
    const/4 v2, 0x0

    .local v2, "mLeft_90":I
    const/4 v7, 0x0

    .line 307
    .local v7, "mTop_90":I
    const/4 v1, 0x0

    .local v1, "mLeft_270":I
    const/4 v6, 0x0

    .line 309
    .local v6, "mTop_270":I
    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    packed-switch v8, :pswitch_data_0

    .line 321
    :goto_0
    :pswitch_0
    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    packed-switch v8, :pswitch_data_1

    .line 339
    :goto_1
    const/4 v8, 0x0

    int-to-float v9, v0

    int-to-float v10, v5

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setLeftTop(IFF)V

    .line 340
    const/4 v8, 0x1

    int-to-float v9, v7

    int-to-float v10, v2

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setLeftTop(IFF)V

    .line 341
    const/4 v8, 0x3

    int-to-float v9, v6

    int-to-float v10, v1

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setLeftTop(IFF)V

    .line 342
    return-void

    .line 313
    :pswitch_1
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 314
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 315
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getWidth()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 316
    goto :goto_0

    .line 323
    :pswitch_2
    div-int/lit8 v8, v3, 0x5

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v5, v8

    .line 324
    mul-int/lit8 v8, v4, 0x6

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 325
    mul-int/lit8 v8, v4, 0x2

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 326
    goto :goto_1

    .line 328
    :pswitch_3
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v5, v8

    .line 329
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 330
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 331
    goto :goto_1

    .line 333
    :pswitch_4
    mul-int/lit8 v8, v3, 0x4

    div-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v5, v8

    .line 334
    mul-int/lit8 v8, v4, 0x2

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 335
    mul-int/lit8 v8, v4, 0x6

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    goto/16 :goto_1

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 345
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    if-eqz v0, :cond_3

    .line 357
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setAnimation(Landroid/view/animation/Animation;)V

    .line 358
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->startAnimation()V

    .line 378
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    invoke-interface {v0, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;->onToastDisplay(Lcom/sec/android/app/camera/glwidget/TwGLToast;I)V

    goto :goto_0

    .line 374
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setAnimation(Landroid/view/animation/Animation;)V

    .line 375
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setAlpha(F)V

    goto :goto_1
.end method
