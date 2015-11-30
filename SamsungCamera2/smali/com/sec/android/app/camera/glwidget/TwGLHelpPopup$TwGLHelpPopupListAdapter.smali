.class Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;
.super Ljava/lang/Object;
.source "TwGLHelpPopup.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLHelpPopupListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;
    .param p2, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$402(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;I)I

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$402(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;I)I

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v0

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 420
    if-nez p2, :cond_5

    .line 421
    const/4 v6, 0x0

    .line 422
    .local v6, "itemPaddingPosition":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHasListTopBottomPadding:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v1

    if-gt v1, v11, :cond_1

    .line 424
    const/4 v6, 0x3

    .line 433
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1000()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1100()I

    move-result v3

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v10

    move v3, v2

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;II)V

    .line 435
    .local v0, "item":Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 437
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->requestFocus()Z

    .line 438
    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setFocusable(Z)V

    .line 456
    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
    .end local v6    # "itemPaddingPosition":I
    :goto_1
    return-object v0

    .line 426
    .restart local v6    # "itemPaddingPosition":I
    :cond_1
    if-nez p1, :cond_2

    .line 427
    const/4 v6, 0x1

    goto :goto_0

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 429
    const/4 v6, 0x2

    goto :goto_0

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v1

    if-ne v1, v11, :cond_4

    .line 441
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1000()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1100()I

    move-result v3

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v9

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;I)V

    .line 442
    .restart local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 444
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->requestFocus()Z

    .line 445
    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setFocusable(Z)V

    goto :goto_1

    .line 447
    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v1

    if-nez v1, :cond_5

    .line 448
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1000()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1100()I

    move-result v3

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I

    move-result v8

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;I)V

    .line 449
    .restart local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 451
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->requestFocus()Z

    .line 452
    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->setFocusable(Z)V

    goto/16 :goto_1

    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
    .end local v6    # "itemPaddingPosition":I
    :cond_5
    move-object v0, p2

    .line 456
    goto/16 :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method
