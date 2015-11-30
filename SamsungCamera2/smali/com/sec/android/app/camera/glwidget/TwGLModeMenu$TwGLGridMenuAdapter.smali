.class Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLModeMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLGridList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLGridMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getPosition(I)I
    .locals 1
    .param p1, "commandid"    # I

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 566
    if-nez p2, :cond_2

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 568
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    if-eqz v6, :cond_2

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 570
    .local v0, "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-nez v0, :cond_1

    .line 571
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v8

    invoke-static {v1, v4, v5, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 572
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_1

    instance-of v1, v7, Lcom/sec/android/app/camera/command/EmptyCommand;

    if-nez v1, :cond_1

    .line 573
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$900()I

    move-result v1

    int-to-float v1, v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1600()F

    move-result v4

    sub-float v4, v9, v4

    mul-float/2addr v1, v4

    div-float/2addr v1, v10

    neg-float v2, v1

    .line 574
    .local v2, "left":F
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1000()I

    move-result v1

    int-to-float v1, v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1600()F

    move-result v4

    sub-float v4, v9, v4

    mul-float/2addr v1, v4

    div-float/2addr v1, v10

    neg-float v3, v1

    .line 575
    .local v3, "top":F
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$900()I

    move-result v4

    int-to-float v4, v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1000()I

    move-result v5

    int-to-float v5, v5

    const/4 v8, -0x5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 576
    .restart local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setRotatable(Z)V

    .line 577
    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setCenterPivot(Z)V

    .line 578
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->resetScale()V

    .line 579
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1600()F

    move-result v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1600()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->scale(FF)V

    .line 581
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v4, 0xcb

    if-ne v1, v4, :cond_0

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setOnSelectListener(Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;)V

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/glview/TwGLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .end local v2    # "left":F
    .end local v3    # "top":F
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method
