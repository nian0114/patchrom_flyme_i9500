.class public Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchEffectTypeMenuCommand.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "effect_constraint"

.field private static final TAG:Ljava/lang/String; = "LaunchEffectTypeMenuCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mEngine:Lcom/sec/android/app/camera/CommonEngine;

.field private mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

.field private final mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private final mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4, "res"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 60
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 61
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 62
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .line 65
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 13

    .prologue
    const/16 v2, 0x66

    const/16 v12, 0x5b

    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 78
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    const-string v2, "LaunchEffectTypeMenuCommand"

    const-string v3, "return isStartPreview.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v10

    .line 171
    :goto_0
    return v2

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    const-string v2, "LaunchEffectTypeMenuCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v10

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    const-string v2, "LaunchEffectTypeMenuCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v10

    .line 90
    goto :goto_0

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    const-string v2, "LaunchEffectTypeMenuCommand"

    const-string v3, "return isRecording.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v10

    .line 95
    goto :goto_0

    .line 99
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->setFrontCamera(Z)V

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 106
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 107
    new-instance v3, Lcom/sec/android/app/camera/resourcedata/FrontEffectResourceData;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v3, v4}, Lcom/sec/android/app/camera/resourcedata/FrontEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 108
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 109
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_4
    :goto_1
    if-nez v0, :cond_7

    move v2, v10

    .line 127
    goto/16 :goto_0

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 113
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 114
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 115
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    move v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 116
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 118
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-ne v2, v11, :cond_4

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 120
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_4

    .line 121
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 122
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    move v2, v12

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 123
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 129
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 131
    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mLaunchX:F

    iget v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mLaunchY:F

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "menuExternal":Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 135
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x2329

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "menuExternal":Lcom/sec/android/app/camera/MenuBase;
    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 136
    .restart local v1    # "menuExternal":Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalMenuView()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    .line 141
    :cond_8
    if-nez v1, :cond_9

    .line 142
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 143
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .end local v1    # "menuExternal":Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x2329

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v6, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    iget v8, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 144
    .restart local v1    # "menuExternal":Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x2329

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 149
    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mLaunchX:F

    iget v3, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mLaunchY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    .line 153
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-nez v2, :cond_d

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :goto_2
    move v2, v11

    .line 171
    goto/16 :goto_0

    .line 156
    :cond_d
    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalMenuView()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 159
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "effect_constraint"

    invoke-interface {v9, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c009e

    invoke-static {v2, v3, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "effect_constraint"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManager()V

    .line 166
    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto :goto_2

    .line 168
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManager()V

    .line 169
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto :goto_2
.end method

.method public setSliderDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    .line 74
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->mZOrder:I

    .line 70
    return-void
.end method
