.class public Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLVirtualTourThumbnailList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_ITEMS:I

.field private static final TAG:Ljava/lang/String; = "TwGLVirtualTourThumbnailList"

.field private static final THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_OFFSET:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private mNumOfItem:I

.field private mOnThumbnailListCloseListener:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;

.field private mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f0a0473

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    .line 20
    const v0, 0x7f0a0474

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    .line 21
    const v0, 0x7f0a0463

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_OFFSET:I

    .line 22
    const v0, 0x7f0b0040

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    .line 23
    const v0, 0x7f0a0464

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 10
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 25
    iput v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    .line 26
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 42
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    if-ge v9, v0, :cond_0

    .line 43
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_OFFSET:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v9

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v9

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 42
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    const v5, 0x7f020287

    const v6, 0x7f020289

    const v7, 0x7f020288

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 51
    return-void
.end method

.method private addItem(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "item"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 100
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    if-ne v1, v2, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->pushItems()V

    .line 102
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    add-float v0, v1, v2

    .line 106
    .local v0, "posX":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLButton;->moveLayoutAbsolute(FF)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 108
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    .line 109
    return-void
.end method

.method private pushItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    if-ge v0, v2, :cond_1

    .line 114
    add-int/lit8 v2, v0, -0x1

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 116
    .local v1, "view":Lcom/sec/android/glview/TwGLView;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 117
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 120
    .end local v1    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 121
    .restart local v1    # "view":Lcom/sec/android/glview/TwGLView;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 122
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    return-void
.end method


# virtual methods
.method public addThumbnail([BII)V
    .locals 15
    .param p1, "jpegData"    # [B
    .param p2, "direction"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 57
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    .local v6, "m":Landroid/graphics/Matrix;
    mul-int/lit8 v2, p3, 0x5a

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 59
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 60
    .local v14, "rotatedBitmap":Landroid/graphics/Bitmap;
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    invoke-static {v14, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 62
    .local v13, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    .local v7, "item":Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;
    invoke-virtual {v7, v13}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 64
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;->setType(I)V

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;->setRotatable(Z)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;->setCenterPivot(Z)V

    .line 67
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->addItem(Lcom/sec/android/glview/TwGLView;)V

    .line 70
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v7    # "item":Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;
    .end local v13    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mOnThumbnailListCloseListener:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;->onOnThumbnailListCloseListener(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeLastThumbnail()V
    .locals 4

    .prologue
    .line 73
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 74
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "posX":F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    if-lez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/glview/TwGLButton;->moveLayoutAbsolute(FF)V

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 83
    .local v1, "view":Lcom/sec/android/glview/TwGLView;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 84
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 86
    .end local v0    # "posX":F
    .end local v1    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    return-void
.end method

.method public resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 91
    .local v1, "view":Lcom/sec/android/glview/TwGLView;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->resetLayout()V

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setOnThumbnailListCloseListener(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mOnThumbnailListCloseListener:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;

    .line 37
    return-void
.end method
