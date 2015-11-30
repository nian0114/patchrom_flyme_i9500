.class public Lcom/sec/android/glview/TwGLText;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLText.java"


# static fields
.field private static final DEFAULT_COLOR:I

.field private static final DEFAULT_TEXTSIZE:F = 21.0f


# instance fields
.field private mColor:I

.field private mHAlign:I

.field private mHeight:F

.field private mShadow:Z

.field private mSize:F

.field protected mString:Lcom/sec/android/glview/TwGLStringTexture;

.field private mStringName:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStringPosX:F

.field private mStringPosY:F

.field private mText:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mVAlign:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 13
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 233
    if-eqz p6, :cond_0

    .line 234
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 235
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 236
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 237
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 238
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 239
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 240
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 244
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V
    .locals 13
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "textSize"    # F

    .prologue
    .line 248
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 250
    if-eqz p6, :cond_0

    .line 251
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 252
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 253
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 254
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 255
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 256
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 257
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 261
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 262
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V
    .locals 13
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "textSize"    # F
    .param p8, "color"    # I

    .prologue
    .line 277
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 279
    if-eqz p6, :cond_0

    .line 280
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 281
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 282
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 283
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 284
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 285
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 286
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 290
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 291
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V
    .locals 13
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "textSize"    # F
    .param p8, "color"    # I
    .param p9, "shadow"    # Z

    .prologue
    .line 294
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 296
    if-eqz p6, :cond_0

    .line 297
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 298
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 299
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 300
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 301
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 302
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 303
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 304
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 308
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 309
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 9
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 151
    if-eqz p4, :cond_0

    .line 152
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 153
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 154
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 156
    invoke-virtual {p0, p4}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 161
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;F)V
    .locals 9
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 167
    if-eqz p4, :cond_0

    .line 168
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 169
    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 170
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 172
    invoke-virtual {p0, p4}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 176
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FI)V
    .locals 9
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F
    .param p6, "color"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 192
    if-eqz p4, :cond_0

    .line 193
    iput p6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 194
    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 195
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 197
    invoke-virtual {p0, p4}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 201
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F
    .param p6, "color"    # I
    .param p7, "shadow"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 207
    if-eqz p4, :cond_0

    .line 208
    iput p6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 209
    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 210
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 211
    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 212
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 213
    invoke-virtual {p0, p4}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 217
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 9
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 89
    if-eqz p2, :cond_0

    .line 90
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 91
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 92
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 93
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 98
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;FI)V
    .locals 9
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # F
    .param p4, "color"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 112
    if-eqz p2, :cond_0

    .line 113
    iput p4, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 114
    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 115
    iput-object p2, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 117
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 121
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;FIZ)V
    .locals 9
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # F
    .param p4, "color"    # I
    .param p5, "shadow"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 50
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 53
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 56
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 59
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 70
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 73
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 78
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 127
    if-eqz p2, :cond_0

    .line 128
    iput p4, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 129
    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 130
    iput-object p2, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 131
    iput-boolean p5, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 132
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 133
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLStringTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 137
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLText;->setClickable(Z)V

    .line 138
    return-void
.end method

.method static getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I
    .locals 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "fieldWidth"    # F

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 376
    .local v0, "end":I
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 377
    .local v1, "stringWidth":I
    const/4 v2, 0x0

    .line 379
    .local v2, "subString":Ljava/lang/String;
    int-to-float v3, v1

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 389
    :goto_0
    return v3

    .line 384
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 385
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 387
    int-to-float v3, v1

    cmpl-float v3, v3, p2

    if-gtz v3, :cond_0

    move v3, v0

    .line 389
    goto :goto_0
.end method

.method public static measureRows(FLjava/lang/String;F)I
    .locals 13
    .param p0, "width"    # F
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F

    .prologue
    const/4 v12, -0x1

    .line 312
    if-nez p1, :cond_0

    .line 313
    const/4 v4, 0x0

    .line 370
    :goto_0
    return v4

    .line 315
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 316
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x0

    .line 317
    .local v7, "subString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 318
    .local v6, "stringLength":I
    const/4 v5, 0x0

    .line 319
    .local v5, "start":I
    const/4 v0, 0x0

    .line 320
    .local v0, "end":I
    const/4 v4, 0x0

    .line 321
    .local v4, "row":I
    const/4 v1, 0x0

    .line 322
    .local v1, "index":I
    const/4 v2, 0x0

    .line 324
    .local v2, "isDone":Z
    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-eqz v9, :cond_1

    .line 325
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 327
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    :cond_2
    const-string v9, " "

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 332
    if-eq v0, v12, :cond_6

    .line 333
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 342
    :goto_1
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 344
    int-to-float v9, v6

    cmpl-float v9, v9, p0

    if-lez v9, :cond_9

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_7

    .line 346
    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 347
    if-eq v0, v12, :cond_3

    add-int/lit8 v9, v0, 0x1

    if-lt v5, v9, :cond_4

    .line 348
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lcom/sec/android/glview/TwGLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v9

    add-int v0, v5, v9

    .line 349
    add-int/lit8 v0, v0, -0x1

    .line 360
    :cond_4
    :goto_2
    add-int/lit8 v5, v0, 0x1

    .line 361
    add-int/lit8 v4, v4, 0x1

    .line 369
    :cond_5
    :goto_3
    if-eqz v2, :cond_2

    goto :goto_0

    .line 336
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 337
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_1

    .line 352
    :cond_7
    move v8, v0

    .line 353
    .local v8, "tempEnd":I
    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 354
    if-eq v0, v12, :cond_8

    add-int/lit8 v9, v0, 0x1

    if-lt v5, v9, :cond_4

    .line 355
    :cond_8
    move v0, v8

    .line 356
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lcom/sec/android/glview/TwGLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v9

    add-int v0, v5, v9

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 362
    .end local v8    # "tempEnd":I
    :cond_9
    if-eq v1, v12, :cond_a

    .line 363
    add-int/lit8 v9, v1, 0x1

    add-int/2addr v5, v9

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 365
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_5

    .line 366
    add-int/lit8 v4, v4, 0x1

    .line 367
    const/4 v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->clear()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 419
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 420
    return-void
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public getStringName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mStringName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSize()V
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 468
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 469
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLText;->mSizeSpecified:Z

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 478
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 479
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 453
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->onAlphaUpdated()V

    .line 456
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 3

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->draw([FLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_0
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 445
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->onLayoutUpdated()V

    .line 448
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->load()Z

    move-result v0

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->reset()V

    .line 759
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAlign(II)V
    .locals 10
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 688
    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 689
    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 691
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 692
    .local v0, "height":F
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v2

    .line 693
    .local v2, "stringWidth":F
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v1

    .line 695
    .local v1, "stringHeight":F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    .line 696
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 697
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v2, v4

    .line 702
    :cond_0
    :goto_0
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    .line 703
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .line 704
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v1, v4

    .line 710
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 726
    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 742
    :goto_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/glview/TwGLStringTexture;->setAlign(II)V

    .line 743
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLStringTexture;->moveLayout(FF)V

    .line 744
    return-void

    .line 699
    :cond_2
    move v2, v3

    goto :goto_0

    .line 706
    :cond_3
    move v1, v0

    goto :goto_1

    .line 712
    :pswitch_0
    iput v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    .line 715
    :pswitch_1
    sub-float v4, v3, v2

    div-float/2addr v4, v6

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 716
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    .line 719
    :pswitch_2
    sub-float v4, v3, v2

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 720
    iput v9, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    .line 728
    :pswitch_3
    iput v7, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    .line 731
    :pswitch_4
    sub-float v4, v0, v1

    div-float/2addr v4, v6

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 732
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    .line 735
    :pswitch_5
    sub-float v4, v0, v1

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 736
    iput v9, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 726
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBold(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .prologue
    .line 664
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setBold(Z)V

    .line 667
    :cond_0
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 1
    .param p1, "bold"    # Z
    .param p2, "color"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLStringTexture;->setBoldColor(ZI)V

    .line 673
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 654
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    if-ne v0, p1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 658
    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setColor(I)V

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 589
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 593
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 594
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setFontSize(I)V

    goto :goto_0
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 507
    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 508
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLStringTexture;->setHeight(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :cond_0
    monitor-exit p0

    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 514
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setSize(FF)V

    .line 517
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 519
    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setShadowColor(I)V

    .line 621
    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 6
    .param p1, "visibility"    # Z
    .param p2, "radius"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "color"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLStringTexture;->setShadowLayer(ZFFFI)V

    .line 627
    :cond_0
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 1
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLStringTexture;->setShadowOffset(FF)V

    .line 615
    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setShadowRadius(F)V

    .line 609
    :cond_0
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 600
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 601
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setShadowVisibility(Z)V

    .line 603
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 486
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 488
    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 489
    iput p2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 490
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setSize(FF)V

    .line 492
    :cond_0
    return-void
.end method

.method public final setStringName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 575
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mStringName:Ljava/lang/CharSequence;

    .line 579
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public setStroke(ZFI)V
    .locals 1
    .param p1, "visibility"    # Z
    .param p2, "width"    # F
    .param p3, "color"    # I

    .prologue
    .line 648
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/glview/TwGLStringTexture;->setStroke(ZFI)V

    .line 651
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setStrokeColor(I)V

    .line 645
    :cond_0
    return-void
.end method

.method public setStrokeVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setStrokeVisibility(Z)V

    .line 633
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setStrokeWidth(F)V

    .line 639
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 527
    if-nez p1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 534
    iput-object p1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 535
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    .line 536
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLText;->mSizeGiven:Z

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 540
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 541
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I

    .prologue
    .line 554
    if-nez p1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    if-eq v0, p3, :cond_0

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 562
    iput p2, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 563
    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 564
    iput-object p1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v3, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;FI)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLText;->setStringName(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setTextScaleX(F)V

    .line 679
    :cond_0
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 498
    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 499
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLStringTexture;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_0
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
