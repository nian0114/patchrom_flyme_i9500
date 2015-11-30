.class Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLExternalFilterListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$1;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 226
    if-nez p2, :cond_2

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 228
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 230
    .local v0, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    if-nez v0, :cond_0

    .line 231
    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 232
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_1

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 234
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$700()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$800()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 235
    .restart local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMute:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setMute(Z)V

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    move-object v9, v0

    .line 251
    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :goto_0
    return-object v9

    .line 240
    .restart local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    new-instance v9, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-direct {v9, v1, v2, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    .line 241
    .local v9, "emptyitem":Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;
    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->setMute(Z)V

    .line 242
    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->setRotatable(Z)V

    .line 243
    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->setCenterPivot(Z)V

    .line 244
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1200()I

    move-result v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1200()I

    move-result v2

    invoke-virtual {v9, v1, v11, v2, v11}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->setMargin(IIII)V

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0

    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v9    # "emptyitem":Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;
    :cond_2
    move-object v9, p2

    .line 251
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
