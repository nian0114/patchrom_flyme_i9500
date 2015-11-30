.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1
    .param p0, "id"    # I
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 34
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    return-object v0
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 11
    .param p0, "id"    # I
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4, "zOrder"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 40
    const/16 v1, 0x63

    if-ne p0, v1, :cond_1

    .line 41
    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    .line 705
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 43
    :cond_1
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v4

    .line 48
    .local v4, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v4, :cond_12

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    sparse-switch p0, :sswitch_data_0

    .line 250
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 251
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 53
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 54
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 57
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 58
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 61
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 62
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 65
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 66
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 70
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 71
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 74
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 75
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 78
    :sswitch_7
    if-ne p4, v3, :cond_2

    .line 79
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto :goto_0

    .line 81
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 82
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 86
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 87
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 90
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 91
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 94
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 95
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 98
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 99
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 102
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 103
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 106
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 107
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 110
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 111
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 114
    :sswitch_f
    if-ne p4, v3, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_3

    .line 115
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 117
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 118
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 122
    :sswitch_10
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result p0

    .line 123
    new-instance v0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    .line 124
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_0

    .line 126
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 127
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 130
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 131
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 136
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .line 137
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_0

    .line 139
    :sswitch_14
    if-ne p4, v3, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 140
    new-instance v0, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 142
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 143
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 147
    :sswitch_15
    if-ne p4, v3, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_5

    .line 148
    new-instance v0, Lcom/sec/android/app/camera/command/DualShotModeSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/DualShotModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 150
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 151
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 155
    :sswitch_16
    if-ne p4, v3, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_6

    .line 156
    new-instance v0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 158
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 159
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 163
    :sswitch_17
    if-ne p4, v3, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_7

    .line 164
    new-instance v0, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 166
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 167
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 171
    :sswitch_18
    if-ne p4, v3, :cond_8

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_8

    .line 172
    new-instance v0, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 174
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_8
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 175
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 179
    :sswitch_19
    if-ne p4, v3, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_9

    .line 180
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 182
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_9
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 183
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 187
    :sswitch_1a
    if-ne p4, v3, :cond_a

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_a

    .line 188
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 190
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 191
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 195
    :sswitch_1b
    if-ne p4, v3, :cond_b

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_b

    .line 196
    new-instance v0, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 198
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 199
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 203
    :sswitch_1c
    if-ne p4, v3, :cond_c

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_c

    .line 204
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 206
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 207
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 211
    :sswitch_1d
    if-ne p4, v3, :cond_d

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_d

    .line 212
    new-instance v0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 214
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchVolumeKeyAsMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchVolumeKeyAsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 215
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 219
    :sswitch_1e
    if-ne p4, v3, :cond_e

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_e

    .line 220
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 222
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_e
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 223
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 227
    :sswitch_1f
    if-ne p4, v3, :cond_f

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_f

    .line 228
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 230
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_f
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 231
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 235
    :sswitch_20
    if-ne p4, v3, :cond_10

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_10

    .line 236
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 238
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_10
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 239
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    .line 242
    :sswitch_21
    if-ne p4, v3, :cond_11

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_11

    .line 243
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 245
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_11
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 246
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 257
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_12
    sparse-switch p0, :sswitch_data_1

    .line 703
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    new-instance v0, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 262
    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 267
    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/DualModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 298
    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 314
    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 318
    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 324
    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 330
    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 369
    :sswitch_29
    new-instance v0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 383
    :sswitch_2a
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 399
    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 408
    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 409
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 417
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 427
    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 474
    :sswitch_2f
    new-instance v0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 490
    :sswitch_30
    new-instance v0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 496
    :sswitch_31
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 501
    :sswitch_32
    new-instance v0, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 507
    :sswitch_33
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 512
    :sswitch_34
    new-instance v0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 518
    :sswitch_35
    new-instance v0, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 524
    :sswitch_36
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 529
    :sswitch_37
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 536
    :sswitch_38
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 542
    :sswitch_39
    new-instance v5, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, v4

    move v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    .line 543
    .local v5, "snsCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {v5, p4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    move-object v0, v5

    .line 544
    goto/16 :goto_0

    .line 547
    .end local v5    # "snsCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_3a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    .line 552
    :sswitch_3b
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 557
    :sswitch_3c
    new-instance v0, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 562
    :sswitch_3d
    new-instance v0, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 566
    :sswitch_3e
    new-instance v0, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 576
    :sswitch_3f
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 584
    :sswitch_40
    new-instance v0, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 589
    :sswitch_41
    new-instance v0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 594
    :sswitch_42
    new-instance v0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 599
    :sswitch_43
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 608
    :sswitch_44
    new-instance v0, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 613
    :sswitch_45
    new-instance v0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 619
    :sswitch_46
    new-instance v0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 625
    :sswitch_47
    new-instance v0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 631
    :sswitch_48
    new-instance v0, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 637
    :sswitch_49
    new-instance v0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 642
    :sswitch_4a
    new-instance v0, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 647
    :sswitch_4b
    new-instance v0, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 653
    :sswitch_4c
    new-instance v0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 659
    :sswitch_4d
    new-instance v0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 664
    :sswitch_4e
    new-instance v0, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 669
    :sswitch_4f
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 674
    :sswitch_50
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 679
    :sswitch_51
    new-instance v0, Lcom/sec/android/app/camera/command/DualShotModeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/DualShotModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 684
    :sswitch_52
    new-instance v0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 686
    :sswitch_53
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 687
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 690
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_54
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 691
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 694
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_55
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 695
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchMultiQuickViewMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 698
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_56
    new-instance v0, Lcom/sec/android/app/camera/command/HelpsettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/HelpsettingsCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x7 -> :sswitch_3
        0x8 -> :sswitch_b
        0xb -> :sswitch_1e
        0xd -> :sswitch_1b
        0x11 -> :sswitch_1f
        0x12 -> :sswitch_5
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_19
        0x1b -> :sswitch_2
        0x27 -> :sswitch_6
        0x28 -> :sswitch_1
        0x35 -> :sswitch_13
        0x3f -> :sswitch_16
        0x42 -> :sswitch_d
        0x47 -> :sswitch_f
        0x48 -> :sswitch_1d
        0x4d -> :sswitch_e
        0x53 -> :sswitch_11
        0x55 -> :sswitch_12
        0x56 -> :sswitch_17
        0x5d -> :sswitch_14
        0x60 -> :sswitch_15
        0x61 -> :sswitch_20
        0x62 -> :sswitch_18
        0x6d -> :sswitch_4
        0xbb8 -> :sswitch_c
        0xbb9 -> :sswitch_9
        0xbbf -> :sswitch_1c
        0xbc4 -> :sswitch_10
        0xbc5 -> :sswitch_5
        0xbc7 -> :sswitch_21
    .end sparse-switch

    .line 257
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_2b
        0x20 -> :sswitch_2c
        0x21 -> :sswitch_2c
        0x24 -> :sswitch_22
        0x25 -> :sswitch_2c
        0x26 -> :sswitch_2c
        0x33 -> :sswitch_0
        0x37 -> :sswitch_39
        0x38 -> :sswitch_3a
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_39
        0x3e -> :sswitch_55
        0x40 -> :sswitch_0
        0x51 -> :sswitch_48
        0x57 -> :sswitch_23
        0xc8 -> :sswitch_22
        0xc9 -> :sswitch_22
        0xca -> :sswitch_22
        0x12c -> :sswitch_24
        0x12d -> :sswitch_24
        0x12e -> :sswitch_24
        0x12f -> :sswitch_24
        0x130 -> :sswitch_24
        0x131 -> :sswitch_24
        0x133 -> :sswitch_24
        0x135 -> :sswitch_24
        0x136 -> :sswitch_24
        0x137 -> :sswitch_24
        0x139 -> :sswitch_24
        0x13a -> :sswitch_24
        0x13c -> :sswitch_24
        0x13e -> :sswitch_24
        0x13f -> :sswitch_24
        0x140 -> :sswitch_24
        0x141 -> :sswitch_24
        0x143 -> :sswitch_24
        0x147 -> :sswitch_24
        0x148 -> :sswitch_24
        0x149 -> :sswitch_24
        0x14b -> :sswitch_24
        0x14c -> :sswitch_24
        0x14d -> :sswitch_24
        0x14e -> :sswitch_24
        0x14f -> :sswitch_24
        0x150 -> :sswitch_24
        0x151 -> :sswitch_24
        0x152 -> :sswitch_24
        0x1f4 -> :sswitch_25
        0x1f5 -> :sswitch_25
        0x1f6 -> :sswitch_25
        0x1f7 -> :sswitch_25
        0x1f8 -> :sswitch_25
        0x1f9 -> :sswitch_25
        0x1fa -> :sswitch_25
        0x1fb -> :sswitch_25
        0x1fc -> :sswitch_25
        0x1fd -> :sswitch_25
        0x1fe -> :sswitch_25
        0x1ff -> :sswitch_25
        0x200 -> :sswitch_25
        0x201 -> :sswitch_25
        0x258 -> :sswitch_2d
        0x259 -> :sswitch_2d
        0x25a -> :sswitch_2d
        0x25b -> :sswitch_2d
        0x2bc -> :sswitch_27
        0x2bd -> :sswitch_27
        0x2be -> :sswitch_27
        0x2bf -> :sswitch_27
        0x320 -> :sswitch_28
        0x321 -> :sswitch_28
        0x323 -> :sswitch_28
        0x324 -> :sswitch_28
        0x384 -> :sswitch_2e
        0x385 -> :sswitch_2e
        0x386 -> :sswitch_2e
        0x387 -> :sswitch_2e
        0x388 -> :sswitch_2e
        0x389 -> :sswitch_2e
        0x38a -> :sswitch_2e
        0x3e8 -> :sswitch_2f
        0x3e9 -> :sswitch_2f
        0x3ea -> :sswitch_2f
        0x3eb -> :sswitch_2f
        0x3f7 -> :sswitch_2f
        0x3f8 -> :sswitch_2f
        0x3f9 -> :sswitch_2f
        0x3fa -> :sswitch_2f
        0x3fb -> :sswitch_2f
        0x3fc -> :sswitch_2f
        0x3fd -> :sswitch_2f
        0x3fe -> :sswitch_2f
        0x3ff -> :sswitch_2f
        0x404 -> :sswitch_2f
        0x405 -> :sswitch_2f
        0x406 -> :sswitch_2f
        0x407 -> :sswitch_2f
        0x408 -> :sswitch_2f
        0x409 -> :sswitch_2f
        0x40a -> :sswitch_2f
        0x40b -> :sswitch_2f
        0x40c -> :sswitch_2f
        0x40d -> :sswitch_2f
        0x40e -> :sswitch_2f
        0x40f -> :sswitch_2f
        0x410 -> :sswitch_2f
        0x411 -> :sswitch_2f
        0x412 -> :sswitch_2f
        0x413 -> :sswitch_2f
        0x414 -> :sswitch_2f
        0x415 -> :sswitch_2f
        0x41a -> :sswitch_2f
        0x41b -> :sswitch_2f
        0x41c -> :sswitch_2f
        0x41d -> :sswitch_2f
        0x41e -> :sswitch_2f
        0x41f -> :sswitch_2f
        0x420 -> :sswitch_2f
        0x421 -> :sswitch_2f
        0x422 -> :sswitch_2f
        0x423 -> :sswitch_2f
        0x424 -> :sswitch_2f
        0x425 -> :sswitch_52
        0x426 -> :sswitch_2f
        0x44c -> :sswitch_30
        0x44d -> :sswitch_30
        0x44e -> :sswitch_30
        0x44f -> :sswitch_30
        0x450 -> :sswitch_30
        0x451 -> :sswitch_30
        0x452 -> :sswitch_30
        0x453 -> :sswitch_30
        0x454 -> :sswitch_30
        0x455 -> :sswitch_30
        0x456 -> :sswitch_30
        0x457 -> :sswitch_30
        0x458 -> :sswitch_30
        0x4b0 -> :sswitch_31
        0x4b1 -> :sswitch_31
        0x4b2 -> :sswitch_31
        0x578 -> :sswitch_32
        0x579 -> :sswitch_32
        0x57a -> :sswitch_33
        0x57b -> :sswitch_33
        0x57c -> :sswitch_33
        0x5dc -> :sswitch_34
        0x5dd -> :sswitch_34
        0x6a4 -> :sswitch_35
        0x6a5 -> :sswitch_35
        0x6a6 -> :sswitch_35
        0x6a7 -> :sswitch_36
        0x6a8 -> :sswitch_36
        0x6a9 -> :sswitch_36
        0x708 -> :sswitch_37
        0x709 -> :sswitch_37
        0x76c -> :sswitch_38
        0x76d -> :sswitch_38
        0x76e -> :sswitch_38
        0x76f -> :sswitch_38
        0x7d0 -> :sswitch_3b
        0x7d1 -> :sswitch_3b
        0x834 -> :sswitch_3c
        0x835 -> :sswitch_3c
        0x898 -> :sswitch_3e
        0x899 -> :sswitch_3e
        0x8fc -> :sswitch_29
        0x8fd -> :sswitch_29
        0x8fe -> :sswitch_29
        0x8ff -> :sswitch_29
        0x900 -> :sswitch_29
        0x901 -> :sswitch_29
        0x902 -> :sswitch_29
        0x903 -> :sswitch_29
        0x904 -> :sswitch_29
        0x905 -> :sswitch_29
        0x906 -> :sswitch_29
        0x907 -> :sswitch_29
        0x908 -> :sswitch_29
        0x909 -> :sswitch_29
        0x90a -> :sswitch_29
        0x90b -> :sswitch_29
        0x90c -> :sswitch_29
        0x90d -> :sswitch_29
        0x90e -> :sswitch_29
        0x90f -> :sswitch_29
        0x910 -> :sswitch_29
        0x911 -> :sswitch_29
        0x912 -> :sswitch_29
        0x913 -> :sswitch_29
        0x914 -> :sswitch_29
        0x915 -> :sswitch_29
        0x916 -> :sswitch_29
        0x917 -> :sswitch_29
        0x919 -> :sswitch_29
        0x91a -> :sswitch_29
        0x91b -> :sswitch_29
        0x91c -> :sswitch_29
        0x91d -> :sswitch_29
        0x91e -> :sswitch_29
        0x91f -> :sswitch_29
        0x920 -> :sswitch_29
        0x921 -> :sswitch_29
        0x960 -> :sswitch_2a
        0x961 -> :sswitch_2a
        0x962 -> :sswitch_2a
        0x963 -> :sswitch_2a
        0x965 -> :sswitch_2a
        0x966 -> :sswitch_2a
        0x967 -> :sswitch_2a
        0x968 -> :sswitch_2a
        0x969 -> :sswitch_2a
        0x96a -> :sswitch_2a
        0x96b -> :sswitch_2a
        0x96d -> :sswitch_2a
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbc -> :sswitch_0
        0xc1c -> :sswitch_3f
        0xc1d -> :sswitch_3f
        0xc1e -> :sswitch_3f
        0xc1f -> :sswitch_3f
        0xc20 -> :sswitch_3f
        0xc21 -> :sswitch_3f
        0xc22 -> :sswitch_3f
        0xc80 -> :sswitch_40
        0xc81 -> :sswitch_40
        0xd48 -> :sswitch_26
        0xd49 -> :sswitch_26
        0xdac -> :sswitch_40
        0xdad -> :sswitch_40
        0xe75 -> :sswitch_56
        0xf3c -> :sswitch_3d
        0xf3d -> :sswitch_3d
        0xfa0 -> :sswitch_44
        0xfa1 -> :sswitch_44
        0xfa2 -> :sswitch_44
        0xfa3 -> :sswitch_44
        0xfa4 -> :sswitch_44
        0xfa5 -> :sswitch_44
        0x1194 -> :sswitch_41
        0x1195 -> :sswitch_41
        0x11f8 -> :sswitch_42
        0x11f9 -> :sswitch_42
        0x125c -> :sswitch_43
        0x125d -> :sswitch_43
        0x12c0 -> :sswitch_45
        0x12c1 -> :sswitch_45
        0x1388 -> :sswitch_46
        0x1389 -> :sswitch_46
        0x138a -> :sswitch_46
        0x1450 -> :sswitch_47
        0x1451 -> :sswitch_47
        0x1452 -> :sswitch_47
        0x1518 -> :sswitch_48
        0x1519 -> :sswitch_48
        0x157c -> :sswitch_49
        0x157d -> :sswitch_49
        0x157e -> :sswitch_49
        0x15e0 -> :sswitch_4e
        0x15e1 -> :sswitch_4e
        0x16a8 -> :sswitch_4a
        0x16a9 -> :sswitch_4a
        0x170e -> :sswitch_0
        0x170f -> :sswitch_0
        0x1770 -> :sswitch_4c
        0x1771 -> :sswitch_4c
        0x1772 -> :sswitch_4c
        0x1773 -> :sswitch_4d
        0x1774 -> :sswitch_4d
        0x1775 -> :sswitch_4d
        0x17d6 -> :sswitch_50
        0x17d7 -> :sswitch_50
        0x1838 -> :sswitch_4f
        0x1839 -> :sswitch_4f
        0x189c -> :sswitch_4b
        0x189d -> :sswitch_4b
        0x1964 -> :sswitch_23
        0x1965 -> :sswitch_23
        0x1966 -> :sswitch_51
        0x1967 -> :sswitch_51
        0x232a -> :sswitch_52
        0x232b -> :sswitch_53
        0x232c -> :sswitch_54
        0x232f -> :sswitch_52
    .end sparse-switch
.end method
