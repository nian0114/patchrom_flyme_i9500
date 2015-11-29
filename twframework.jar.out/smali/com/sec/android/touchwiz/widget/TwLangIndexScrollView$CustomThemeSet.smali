.class public Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomThemeSet"
.end annotation


# instance fields
.field private bgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private handleTextColorPressed:I

.field private separatorColor:I

.field private textColorDimmed:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bgIndexRectDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgDrawableDefault"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgDrawableDefaultMoreDepth"    # Landroid/graphics/drawable/Drawable;
    .param p4, "handleBgScrollDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 620
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 621
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 622
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 623
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 624
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 625
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 636
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 637
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 638
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 639
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 640
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 641
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 642
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 643
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 2
    .param p1, "bgIndexRectDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgDrawableDefault"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgDrawableDefaultMoreDepth"    # Landroid/graphics/drawable/Drawable;
    .param p4, "handleBgScrollDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "separatorColor"    # I
    .param p6, "textColorDimmed"    # I
    .param p7, "handleTextColorPressed"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 620
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 621
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 622
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 623
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 624
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 625
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 658
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 659
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 660
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 661
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 662
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 663
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 664
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 665
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 617
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 617
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 617
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    return v0
.end method
