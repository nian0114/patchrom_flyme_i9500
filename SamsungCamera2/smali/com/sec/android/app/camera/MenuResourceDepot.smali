.class public Lcom/sec/android/app/camera/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Lcom/sec/android/app/camera/EmptyView;

.field private mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

.field private mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

.field public mMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field public mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 91
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 92
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 93
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 94
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method

.method private clearAllMenus()V
    .locals 5

    .prologue
    .line 375
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearAllMenus"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 377
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 379
    .local v0, "id":I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 380
    .local v2, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 382
    :cond_0
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearing..."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v0    # "id":I
    .end local v2    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method private mustNotClear(Lcom/sec/android/app/camera/MenuBase;)Z
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/MenuBase;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearInvisibleViews()V
    .locals 7

    .prologue
    .line 102
    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 105
    .local v3, "menusClone":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/MenuBase;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    .local v0, "id":I
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 109
    .local v2, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    const-string v4, "MenuResourceDepot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->mustNotClear(Lcom/sec/android/app/camera/MenuBase;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/Camera;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 115
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 116
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_0

    .line 119
    .end local v0    # "id":I
    .end local v2    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public closeVisibleViews()V
    .locals 5

    .prologue
    .line 127
    const-string v3, "MenuResourceDepot"

    const-string v4, "closeVisibleViews"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    .local v0, "id":I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 132
    .local v2, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 133
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 136
    .end local v0    # "id":I
    .end local v2    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 7
    .param p1, "layoutId"    # I
    .param p2, "baseLayout"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    .line 334
    .local v1, "context":Lcom/sec/android/app/camera/Camera;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-nez v0, :cond_1

    .line 338
    new-instance v0, Lcom/sec/android/app/camera/EmptyView;

    const v3, 0x7f0e0019

    const/4 v6, 0x6

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/EmptyView;-><init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x7f040009
        :pswitch_0
    .end packed-switch
.end method

.method public getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x5

    .line 348
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 371
    :goto_0
    return-object v0

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    .line 352
    .local v1, "context":Lcom/sec/android/app/camera/Camera;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 354
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    goto :goto_0

    .line 359
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-nez v0, :cond_2

    .line 360
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    goto :goto_0

    .line 365
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    if-nez v0, :cond_3

    .line 366
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    goto :goto_0

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0xbc0 -> :sswitch_1
        0xbc3 -> :sswitch_2
    .end sparse-switch
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 138
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 139
    .local v0, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 326
    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    return-object v1

    .line 141
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 323
    :goto_1
    if-eqz v0, :cond_1

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 326
    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 143
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 144
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 147
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/QuickSettingMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/QuickSettingMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 148
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 150
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 151
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 153
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 154
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 156
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 157
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 160
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontCamcorderResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 161
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 163
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 164
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 166
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 167
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 169
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 170
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 172
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 173
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 175
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 176
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 178
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 179
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 181
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 182
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 184
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 185
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 187
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 188
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 190
    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAntiShakeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 191
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 193
    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AutoContrastResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 194
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 196
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 197
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 199
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 200
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 202
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 203
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 205
    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 206
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 208
    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 209
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 211
    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 212
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 214
    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 215
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 217
    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/StorageResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/StorageResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 218
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 220
    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 221
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 223
    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 224
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 226
    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CommonSettingsMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CommonSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 227
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 229
    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EditableShortcutResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 230
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 232
    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 233
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 235
    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraRecordingModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraRecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 236
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 238
    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 239
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 241
    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 242
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 244
    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 245
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 248
    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 249
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 251
    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 252
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 254
    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 255
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 257
    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextualFilenameResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextualFilenameResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 258
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 260
    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 261
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 263
    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SaveRichtoneResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SaveRichtoneResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 264
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 266
    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VolumeKeyAsResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VolumeKeyAsResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 267
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 269
    :sswitch_29
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/StoryShotModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/StoryShotModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 270
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 272
    :sswitch_2a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EasyCameraFlashModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EasyCameraFlashModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 273
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 275
    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FaceDetectionCommandResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FaceDetectionCommandResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 276
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 278
    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TouchToCaptureCommandResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TouchToCaptureCommandResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 279
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 281
    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/DirectShareResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/DirectShareResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 282
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 284
    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ChatOnShareResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ChatOnShareResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 285
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 287
    :sswitch_2f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShareShotResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShareShotResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 288
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 290
    :sswitch_30
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 291
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 293
    :sswitch_31
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 294
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 296
    :sswitch_32
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SlowMotionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SlowMotionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 297
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 299
    :sswitch_33
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FastMotionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FastMotionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 300
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 302
    :sswitch_34
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 303
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 305
    :sswitch_35
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AutoNightDetectionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AutoNightDetectionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 306
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 308
    :sswitch_36
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/DualShotModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/DualShotModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 309
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 311
    :sswitch_37
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VoiceGuideResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VoiceGuideResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 312
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 314
    :sswitch_38
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAudioZoomResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAudioZoomResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 315
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 317
    :sswitch_39
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 318
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_e
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_22
        0x13 -> :sswitch_16
        0x14 -> :sswitch_14
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x1b -> :sswitch_19
        0x22 -> :sswitch_27
        0x23 -> :sswitch_1d
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1c
        0x29 -> :sswitch_1
        0x33 -> :sswitch_15
        0x35 -> :sswitch_13
        0x3f -> :sswitch_24
        0x40 -> :sswitch_25
        0x42 -> :sswitch_1
        0x47 -> :sswitch_26
        0x48 -> :sswitch_28
        0x4d -> :sswitch_29
        0x53 -> :sswitch_2e
        0x54 -> :sswitch_2d
        0x55 -> :sswitch_2f
        0x56 -> :sswitch_2b
        0x5d -> :sswitch_35
        0x60 -> :sswitch_36
        0x61 -> :sswitch_37
        0x62 -> :sswitch_2c
        0x65 -> :sswitch_6
        0x6d -> :sswitch_39
        0xbb8 -> :sswitch_1e
        0xbb9 -> :sswitch_1f
        0xbbb -> :sswitch_20
        0xbbc -> :sswitch_21
        0xbbd -> :sswitch_1a
        0xbbe -> :sswitch_1b
        0xbbf -> :sswitch_23
        0xbc1 -> :sswitch_5
        0xbc4 -> :sswitch_2a
        0xbc5 -> :sswitch_22
        0xbc7 -> :sswitch_38
        0x170c -> :sswitch_30
        0x170d -> :sswitch_31
        0x170e -> :sswitch_32
        0x170f -> :sswitch_33
        0x1710 -> :sswitch_34
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 386
    const-string v2, "MenuResourceDepot"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/EmptyView;->clear()V

    .line 390
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->clear()V

    .line 394
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v2, :cond_2

    .line 397
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 398
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 400
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    if-eqz v2, :cond_3

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->clear()V

    .line 402
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLEasyRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 405
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearAllMenus()V

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 407
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 409
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 410
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 411
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    goto :goto_0

    .line 413
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 414
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 416
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    if-eqz v2, :cond_7

    .line 417
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->clear()V

    .line 418
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 420
    :cond_7
    return-void
.end method
