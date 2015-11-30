.class public Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchMultiQuickViewMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchMultiQuickViewMenuCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAnimation:I

.field private final mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4, "res"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mAnimation:I

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 41
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 42
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 8

    .prologue
    const/16 v2, 0x3e

    const/4 v7, 0x0

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 86
    :goto_0
    return v1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v7

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 72
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 73
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x5

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mAnimation:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 74
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 79
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 86
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 83
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto :goto_1
.end method

.method public setAnimationType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mAnimation:I

    .line 51
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->mZOrder:I

    .line 47
    return-void
.end method
