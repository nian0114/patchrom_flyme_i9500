.class Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLModeMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 185
    if-nez p2, :cond_2

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 187
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 188
    .local v0, "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 190
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$900()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1000()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 191
    .restart local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setRotatable(Z)V

    .line 192
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setCenterPivot(Z)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setOnSelectListener(Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
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
    .line 176
    return-void
.end method
