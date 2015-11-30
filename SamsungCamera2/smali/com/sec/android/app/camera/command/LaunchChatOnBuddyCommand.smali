.class public Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchChatOnBuddyCommand.java"


# static fields
.field public static sAnchor:Lcom/sec/android/glview/TwGLImage;


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private final mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private final mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private final mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4, "res"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "commandid"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mSlideDirection:I

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 41
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 42
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 43
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 44
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x53

    .line 56
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getChatOnShot()Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ChatOnShot;->isChatOnLogin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getChatOnShot()Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ChatOnShot;->isChatOnInstalled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->showChatOnGuideDialog(Z)V

    .line 81
    :goto_0
    return v1

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getChatOnShot()Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getChatOnShot()Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ChatOnShot;->pickChatOnBuddyList()V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 67
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_2

    .line 68
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;II)V

    .line 69
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mLaunchX:F

    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    .line 73
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 76
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 81
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1
.end method

.method public setSliderDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mSlideDirection:I

    .line 52
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->mZOrder:I

    .line 48
    return-void
.end method
