.class Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLMultiQuickViewMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v4

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v20

    .line 214
    .local v20, "image":Lcom/sec/android/app/camera/gallery/IImage;
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$500()I

    move-result v6

    int-to-float v6, v6

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$600()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 215
    .local v2, "item":Lcom/sec/android/glview/TwGLViewGroup;
    if-nez p2, :cond_1

    .line 216
    if-eqz v20, :cond_0

    .line 217
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/gallery/IImage;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 218
    .local v9, "b":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$500()I

    move-result v7

    int-to-float v7, v7

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$600()I

    move-result v8

    int-to-float v8, v8

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    .line 219
    .local v3, "imageItem":Lcom/sec/android/glview/TwGLImage;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLImage;->setTag(I)V

    .line 220
    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 222
    new-instance v10, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$500()I

    move-result v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->ITEM_DELETE_BUTTON_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$1000()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v12, v4

    const/4 v13, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->ITEM_DELETE_BUTTON_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$1000()I

    move-result v4

    int-to-float v14, v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->ITEM_DELETE_BUTTON_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$1100()I

    move-result v4

    int-to-float v15, v4

    const v16, 0x7f0201d1

    const v17, 0x7f0201d2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    .line 223
    .local v10, "deleteButton":Lcom/sec/android/glview/TwGLButton;
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 224
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;Lcom/sec/android/app/camera/gallery/IImage;)V

    invoke-virtual {v10, v4}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 248
    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 250
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 254
    .end local v2    # "item":Lcom/sec/android/glview/TwGLViewGroup;
    .end local v3    # "imageItem":Lcom/sec/android/glview/TwGLImage;
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "deleteButton":Lcom/sec/android/glview/TwGLButton;
    :cond_0
    :goto_0
    return-object v2

    .restart local v2    # "item":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_1
    move-object/from16 v2, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->refreshImageList()V

    .line 258
    return-void
.end method
