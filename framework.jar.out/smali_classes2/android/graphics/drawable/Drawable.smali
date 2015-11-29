.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$ConstantState;,
        Landroid/graphics/drawable/Drawable$Callback;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingConfigurations:I

.field private mImagePath:Ljava/lang/String;

.field private mLayoutDirection:I

.field private mLevel:I

.field private mStateSet:[I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return-void
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x2000

    const/4 v6, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    invoke-static {v8, v9, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "tmpDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setImagePath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v6    # "tmpDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2000

    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_0
    const-string v0, "Unknown drawable"

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v6, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "pad":Landroid/graphics/Rect;
    if-nez p4, :cond_2

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    :goto_1
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    invoke-static {p0, p1, p2, v3, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .local v2, "np":[B
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "tmpDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p3}, Landroid/graphics/drawable/Drawable;->setImagePath(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "np":[B
    .end local v4    # "opticalInsets":Landroid/graphics/Rect;
    .end local v6    # "tmpDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_1
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2000

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, p0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_0
    const-string v0, "Unknown drawable"

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v4, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :cond_1
    if-eq v2, v4, :cond_2

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    const-string v4, "selector"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string v4, "animated-selector"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v4, "level-list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string v4, "layer-list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v4, "transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v4, "ripple"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string v4, "color"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const-string v4, "shape"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    const-string v4, "vector"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    const-string v4, "animated-vector"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    const-string v4, "scale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    const-string v4, "clip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    const-string v4, "rotate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_d
    const-string v4, "animated-rotate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    const-string v4, "animation-list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_f
    const-string v4, "inset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_10
    const-string v4, "bitmap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_0

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    const-string v4, "nine-patch"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_0

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_12
    const-string v4, "spr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :try_start_0
    const-string v4, "com.samsung.android.sdk.spr.drawable.SprDrawable"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": unable to load spr."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_13
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": invalid drawable tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "layoutBounds"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    packed-switch p0, :pswitch_data_0

    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    :pswitch_0
    return-object p1

    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static resolveOpacity(II)I
    .locals 2
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v1, -0x3

    if-ne p0, p1, :cond_0

    .end local p0    # "op1":I
    :goto_0
    return p0

    .restart local p0    # "op1":I
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    if-eq p0, v1, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    move p0, v1

    goto :goto_0

    :cond_4
    if-eq p0, v0, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    move p0, v0

    goto :goto_0

    :cond_6
    const/4 p0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final copyBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    const/16 v0, 0xff

    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    return-object p0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    return v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicHeight":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicWidth":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicWidth":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getOpacity()I
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-eqz p4, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-virtual {p4, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v2}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isImagePath()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProjected()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .prologue
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public abstract setAlpha(I)V
.end method

.method public setAutoMirrored(Z)V
    .locals 0
    .param p1, "mirrored"    # Z

    .prologue
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .restart local v0    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z

    .prologue
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    return-void
.end method

.method public setImagePath(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    .prologue
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "path":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    .end local v0    # "path":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    :cond_0
    return-void
.end method

.method public final setLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return v0

    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tintFilter"    # Landroid/graphics/PorterDuffColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    :goto_0
    return-object p1

    .restart local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "color":I
    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .end local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    invoke-direct {p1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .restart local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    invoke-virtual {p1, p3}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
