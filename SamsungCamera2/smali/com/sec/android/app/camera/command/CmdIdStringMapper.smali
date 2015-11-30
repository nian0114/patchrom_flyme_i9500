.class public Lcom/sec/android/app/camera/command/CmdIdStringMapper;
.super Ljava/lang/Object;
.source "CmdIdStringMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 25
    sparse-switch p0, :sswitch_data_0

    .line 616
    const-string v0, "NONE"

    :goto_0
    return-object v0

    .line 26
    :sswitch_0
    const-string v0, "MENU_MODE"

    goto :goto_0

    .line 27
    :sswitch_1
    const-string v0, "MENUID_SHOOTINGMODE"

    goto :goto_0

    .line 28
    :sswitch_2
    const-string v0, "MENUID_SCENEMODE"

    goto :goto_0

    .line 29
    :sswitch_3
    const-string v0, "MENUID_FLASHMODE"

    goto :goto_0

    .line 30
    :sswitch_4
    const-string v0, "MENUID_CAMERA_RESOLUTION"

    goto :goto_0

    .line 31
    :sswitch_5
    const-string v0, "MENUID_FOCUSMODE"

    goto :goto_0

    .line 32
    :sswitch_6
    const-string v0, "MENUID_TIMER"

    goto :goto_0

    .line 33
    :sswitch_7
    const-string v0, "MENUID_EXPOSUREVALUE"

    goto :goto_0

    .line 34
    :sswitch_8
    const-string v0, "MENUID_EFFECT"

    goto :goto_0

    .line 35
    :sswitch_9
    const-string v0, "MENUID_WB"

    goto :goto_0

    .line 36
    :sswitch_a
    const-string v0, "MENUID_ISO"

    goto :goto_0

    .line 37
    :sswitch_b
    const-string v0, "MENUID_EXPOSUREMETER"

    goto :goto_0

    .line 38
    :sswitch_c
    const-string v0, "MENUID_CAMERA_ANTISHAKE"

    goto :goto_0

    .line 39
    :sswitch_d
    const-string v0, "MENUID_AUTOCONTRAST"

    goto :goto_0

    .line 41
    :sswitch_e
    const-string v0, "MENUID_CAMERA_QUALITY"

    goto :goto_0

    .line 42
    :sswitch_f
    const-string v0, "MENUID_REVIEW"

    goto :goto_0

    .line 43
    :sswitch_10
    const-string v0, "MENUID_ZOOM"

    goto :goto_0

    .line 44
    :sswitch_11
    const-string v0, "MENUID_GUIDELINE"

    goto :goto_0

    .line 45
    :sswitch_12
    const-string v0, "MENUID_GPS"

    goto :goto_0

    .line 46
    :sswitch_13
    const-string v0, "MENUID_SHUTTERSOUND"

    goto :goto_0

    .line 47
    :sswitch_14
    const-string v0, "MENUID_STORAGE"

    goto :goto_0

    .line 52
    :sswitch_15
    const-string v0, "MENUID_SETTINGS"

    goto :goto_0

    .line 53
    :sswitch_16
    const-string v0, "MENUID_BACK"

    goto :goto_0

    .line 54
    :sswitch_17
    const-string v0, "MENUID_IMAGEVIEWER"

    goto :goto_0

    .line 55
    :sswitch_18
    const-string v0, "MENUID_RESET"

    goto :goto_0

    .line 56
    :sswitch_19
    const-string v0, "MENUID_REVIEW_TIMER"

    goto :goto_0

    .line 57
    :sswitch_1a
    const-string v0, "MENUID_SHUTTER"

    goto :goto_0

    .line 58
    :sswitch_1b
    const-string v0, "MENUID_ATTACH_MODE"

    goto :goto_0

    .line 59
    :sswitch_1c
    const-string v0, "MENUID_SAVE_RICHTONE"

    goto :goto_0

    .line 60
    :sswitch_1d
    const-string v0, "MENUID_OUTDOOR_VISIBILITY"

    goto :goto_0

    .line 61
    :sswitch_1e
    const-string v0, "MENUID_CAMERA_MODE"

    goto :goto_0

    .line 62
    :sswitch_1f
    const-string v0, "MENUID_FOCUSMODE_CONTINUOUS"

    goto :goto_0

    .line 63
    :sswitch_20
    const-string v0, "MENUID_SHUTTERSOUND_CONTINUOUS"

    goto :goto_0

    .line 64
    :sswitch_21
    const-string v0, "MENUID_CONTEXT"

    goto :goto_0

    .line 65
    :sswitch_22
    const-string v0, "MENUID_EDITABLE_SHORTCUT"

    goto :goto_0

    .line 66
    :sswitch_23
    const-string v0, "MENUID_CAMERA_BASEMENU"

    goto :goto_0

    .line 67
    :sswitch_24
    const-string v0, "MENUID_PANORAMA"

    goto :goto_0

    .line 68
    :sswitch_25
    const-string v0, "MENUID_ACTION"

    goto :goto_0

    .line 69
    :sswitch_26
    const-string v0, "MENUID_SMILE"

    goto :goto_0

    .line 70
    :sswitch_27
    const-string v0, "MENUID_CARTOON"

    goto :goto_0

    .line 71
    :sswitch_28
    const-string v0, "MENUID_RICHTONE"

    goto :goto_0

    .line 72
    :sswitch_29
    const-string v0, "MENUID_FLASHMODE_BACKLIGHT"

    goto :goto_0

    .line 73
    :sswitch_2a
    const-string v0, "MENUID_RESET_POPUP"

    goto/16 :goto_0

    .line 74
    :sswitch_2b
    const-string v0, "MENUID_CAMERA_BASE_INDICATORS"

    goto/16 :goto_0

    .line 75
    :sswitch_2c
    const-string v0, "MENUID_EDIT"

    goto/16 :goto_0

    .line 76
    :sswitch_2d
    const-string v0, "MENUID_SELF_FLIP"

    goto/16 :goto_0

    .line 77
    :sswitch_2e
    const-string v0, "MENUID_RECORDING_MODE_POPUP"

    goto/16 :goto_0

    .line 78
    :sswitch_2f
    const-string v0, "MENUID_SHARE_MODE"

    goto/16 :goto_0

    .line 80
    :sswitch_30
    const-string v0, "MENUID_USERPROFILE"

    goto/16 :goto_0

    .line 81
    :sswitch_31
    const-string v0, "MENUID_PREVIEWFILERECEIVED"

    goto/16 :goto_0

    .line 82
    :sswitch_32
    const-string v0, "MENUID_NETWORK"

    goto/16 :goto_0

    .line 83
    :sswitch_33
    const-string v0, "MENUID_SELECTPICTURE"

    goto/16 :goto_0

    .line 84
    :sswitch_34
    const-string v0, "MENUID_BURST"

    goto/16 :goto_0

    .line 85
    :sswitch_35
    const-string v0, "MENUID_TIMER_COUNT"

    goto/16 :goto_0

    .line 86
    :sswitch_36
    const-string v0, "MENUID_MULTIQUICKVIEW"

    goto/16 :goto_0

    .line 88
    :sswitch_37
    const-string v0, "MENUID_BURST_SETTINGS"

    goto/16 :goto_0

    .line 89
    :sswitch_38
    const-string v0, "MENUID_CONTEXTUAL_FILENAME"

    goto/16 :goto_0

    .line 90
    :sswitch_39
    const-string v0, "MENUID_RECORDING"

    goto/16 :goto_0

    .line 91
    :sswitch_3a
    const-string v0, "MENUID_QUICKSETTING_MENU"

    goto/16 :goto_0

    .line 92
    :sswitch_3b
    const-string v0, "MENUID_PETDET"

    goto/16 :goto_0

    .line 93
    :sswitch_3c
    const-string v0, "MENUID_EASYMODE"

    goto/16 :goto_0

    .line 94
    :sswitch_3d
    const-string v0, "MENUID_BEST_TOURIST"

    goto/16 :goto_0

    .line 95
    :sswitch_3e
    const-string v0, "MENUID_BEST_TOURIST"

    goto/16 :goto_0

    .line 96
    :sswitch_3f
    const-string v0, "MENUID_VOICECOMMAND"

    goto/16 :goto_0

    .line 97
    :sswitch_40
    const-string v0, "MENUID_VOLUME_KEY_AS"

    goto/16 :goto_0

    .line 98
    :sswitch_41
    const-string v0, "MENUID_VOLUME_KEY_AS_AQUA"

    goto/16 :goto_0

    .line 99
    :sswitch_42
    const-string v0, "MENUID_DRAMA"

    goto/16 :goto_0

    .line 100
    :sswitch_43
    const-string v0, "MENUID_SOUNDSHOT"

    goto/16 :goto_0

    .line 101
    :sswitch_44
    const-string v0, "MENUID_SOUNDSHOT_MODE"

    goto/16 :goto_0

    .line 102
    :sswitch_45
    const-string v0, "MENUID_SHOOTINGMODE_EASY"

    goto/16 :goto_0

    .line 103
    :sswitch_46
    const-string v0, "MENUID_SHOOTINGMODE_EASY_FRONT"

    goto/16 :goto_0

    .line 104
    :sswitch_47
    const-string v0, "MENUID_DUAL_SHOT"

    goto/16 :goto_0

    .line 105
    :sswitch_48
    const-string v0, "MENUID_BEAUTYFACE_MODE"

    goto/16 :goto_0

    .line 106
    :sswitch_49
    const-string v0, "MENUID_SOUNDSHOT_ADD_VOICE"

    goto/16 :goto_0

    .line 107
    :sswitch_4a
    const-string v0, "MENUID_CHATON_SHARE_LIST"

    goto/16 :goto_0

    .line 108
    :sswitch_4b
    const-string v0, "MENUID_DIRECT_SHARE_LIST"

    goto/16 :goto_0

    .line 109
    :sswitch_4c
    const-string v0, "MENUID_SHARE_SHOT_LIST"

    goto/16 :goto_0

    .line 110
    :sswitch_4d
    const-string v0, "MENUID_FACE_DETECTION"

    goto/16 :goto_0

    .line 111
    :sswitch_4e
    const-string v0, "MENUID_DUAL_MODE"

    goto/16 :goto_0

    .line 112
    :sswitch_4f
    const-string v0, "MENUID_BEST_FACE"

    goto/16 :goto_0

    .line 113
    :sswitch_50
    const-string v0, "MENUID_BEST_PHOTO"

    goto/16 :goto_0

    .line 114
    :sswitch_51
    const-string v0, "MENUID_ERASER"

    goto/16 :goto_0

    .line 115
    :sswitch_52
    const-string v0, "MENUID_EFFECT_DUAL"

    goto/16 :goto_0

    .line 116
    :sswitch_53
    const-string v0, "MENUID_CINEPIC"

    goto/16 :goto_0

    .line 117
    :sswitch_54
    const-string v0, "MENUID_AUTO_NIGHT_DETECTION"

    goto/16 :goto_0

    .line 118
    :sswitch_55
    const-string v0, "MENUID_LIMITED_SHARE_MODE_FOR_RVF"

    goto/16 :goto_0

    .line 119
    :sswitch_56
    const-string v0, "MENUID_LIMITED_SHARE_MODE_FOR_BUDDY_RVF"

    goto/16 :goto_0

    .line 120
    :sswitch_57
    const-string v0, "MENUID_DUAL_SHOT_MODE"

    goto/16 :goto_0

    .line 121
    :sswitch_58
    const-string v0, "MENUID_VOICE_GUIDE"

    goto/16 :goto_0

    .line 122
    :sswitch_59
    const-string v0, "MENUID_TOUCH_TO_CAPTURE"

    goto/16 :goto_0

    .line 124
    :sswitch_5a
    const-string v0, "MENUID_EMPTY"

    goto/16 :goto_0

    .line 127
    :sswitch_5b
    const-string v0, "MENUID_SHOOTINGMODE_FRONT"

    goto/16 :goto_0

    .line 128
    :sswitch_5c
    const-string v0, "MENUID_RESOLUTION_FRONT"

    goto/16 :goto_0

    .line 129
    :sswitch_5d
    const-string v0, "MENUID_EFFECT_FRONT"

    goto/16 :goto_0

    .line 132
    :sswitch_5e
    const-string v0, "MENUID_EFFECT_BACK_CAMERA_RESOLUTION"

    goto/16 :goto_0

    .line 135
    :sswitch_5f
    const-string v0, "MENUID_LIMITED_SHOOTINGMODE_FOR_CINEPIC"

    goto/16 :goto_0

    .line 138
    :sswitch_60
    const-string v0, "MENUID_ERASER_CAMERA_RESOLUTION"

    goto/16 :goto_0

    .line 141
    :sswitch_61
    const-string v0, "MENUID_BESTFACE_CAMERA_RESOLUTION"

    goto/16 :goto_0

    .line 144
    :sswitch_62
    const-string v0, "MENUID_UHD_CAMCORDER_RESOLUTION"

    goto/16 :goto_0

    .line 147
    :sswitch_63
    const-string v0, "MENUID_PANORAMA360"

    goto/16 :goto_0

    .line 150
    :sswitch_64
    const-string v0, "MENUID_BEAUTYFACE_LEVEL"

    goto/16 :goto_0

    .line 153
    :sswitch_65
    const-string v0, "MENUID_SQUARE_CAMERA_RESOLUTION"

    goto/16 :goto_0

    .line 156
    :sswitch_66
    const-string v0, "MENUID_3DTOUR"

    goto/16 :goto_0

    .line 158
    :sswitch_67
    const-string v0, "CAMERA_MODE_REAR"

    goto/16 :goto_0

    .line 159
    :sswitch_68
    const-string v0, "CAMERA_MODE_FRONT"

    goto/16 :goto_0

    .line 160
    :sswitch_69
    const-string v0, "CAMERA_MODE_FRONT"

    goto/16 :goto_0

    .line 163
    :sswitch_6a
    const-string v0, "SHOOTINGMODE_SINGLE"

    goto/16 :goto_0

    .line 164
    :sswitch_6b
    const-string v0, "SHOOTINGMODE_CONTINUOUS"

    goto/16 :goto_0

    .line 165
    :sswitch_6c
    const-string v0, "SHOOTINGMODE_PANORAMA"

    goto/16 :goto_0

    .line 166
    :sswitch_6d
    const-string v0, "SHOOTINGMODE_SMILE"

    goto/16 :goto_0

    .line 167
    :sswitch_6e
    const-string v0, "SHOOTINGMODE_MOSAIC"

    goto/16 :goto_0

    .line 168
    :sswitch_6f
    const-string v0, "SHOOTINGMODE_FRAME"

    goto/16 :goto_0

    .line 170
    :sswitch_70
    const-string v0, "SHOOTINGMODE_BEAUTY"

    goto/16 :goto_0

    .line 172
    :sswitch_71
    const-string v0, "SHOOTINGMODE_ADD_ME"

    goto/16 :goto_0

    .line 173
    :sswitch_72
    const-string v0, "SHOOTINGMODE_ACTION_SHOT"

    goto/16 :goto_0

    .line 174
    :sswitch_73
    const-string v0, "SHOOTINGMODE_STOP_MOTION"

    goto/16 :goto_0

    .line 175
    :sswitch_74
    const-string v0, "SHOOTINGMODE_CARTOON"

    goto/16 :goto_0

    .line 176
    :sswitch_75
    const-string v0, "SHOOTINGMODE_RICH_TONE"

    goto/16 :goto_0

    .line 178
    :sswitch_76
    const-string v0, "SHOOTINGMODE_BURST"

    goto/16 :goto_0

    .line 179
    :sswitch_77
    const-string v0, "SHOOTINGMODE_FACE_SHOT"

    goto/16 :goto_0

    .line 180
    :sswitch_78
    const-string v0, "SHOOTINGMODE_NIGHT"

    goto/16 :goto_0

    .line 181
    :sswitch_79
    const-string v0, "SHOOTINGMODE_BEST_PHOTO"

    goto/16 :goto_0

    .line 182
    :sswitch_7a
    const-string v0, "SHOOTINGMODE_BEST_FACE"

    goto/16 :goto_0

    .line 184
    :sswitch_7b
    const-string v0, "SHOOTINGMODE_ERASER"

    goto/16 :goto_0

    .line 186
    :sswitch_7c
    const-string v0, "SHOOTINGMODE_GOLF"

    goto/16 :goto_0

    .line 187
    :sswitch_7d
    const-string v0, "SHOOTINGMODE_DRAMA"

    goto/16 :goto_0

    .line 188
    :sswitch_7e
    const-string v0, "SHOOTINGMODE_SOUNDSHOT"

    goto/16 :goto_0

    .line 189
    :sswitch_7f
    const-string v0, "SHOOTINGMODE_3DPANORAMA"

    goto/16 :goto_0

    .line 190
    :sswitch_80
    const-string v0, "SHOOTINGMODE_CINEPIC"

    goto/16 :goto_0

    .line 191
    :sswitch_81
    const-string v0, "SHOOTINGMODE_NIGHT_SCENE"

    goto/16 :goto_0

    .line 192
    :sswitch_82
    const-string v0, "SHOOTINGMODE_SPORTS_SCENE"

    goto/16 :goto_0

    .line 193
    :sswitch_83
    const-string v0, "SHOOTINGMODE_AQUA_SCENE"

    goto/16 :goto_0

    .line 194
    :sswitch_84
    const-string v0, "SHOOTINGMODE_DUALSHOT"

    goto/16 :goto_0

    .line 195
    :sswitch_85
    const-string v0, "SHOOTINGMODE_LIGHTPIP"

    goto/16 :goto_0

    .line 198
    :sswitch_86
    const-string v0, "SCENEMODE_NONE"

    goto/16 :goto_0

    .line 199
    :sswitch_87
    const-string v0, "SCENEMODE_PORTRAIT"

    goto/16 :goto_0

    .line 200
    :sswitch_88
    const-string v0, "SCENEMODE_LANDSCAPE"

    goto/16 :goto_0

    .line 201
    :sswitch_89
    const-string v0, "SCENEMODE_NIGHT"

    goto/16 :goto_0

    .line 202
    :sswitch_8a
    const-string v0, "SCENEMODE_SPORTS"

    goto/16 :goto_0

    .line 203
    :sswitch_8b
    const-string v0, "SCENEMODE_INDOOR"

    goto/16 :goto_0

    .line 204
    :sswitch_8c
    const-string v0, "SCENEMODE_BEACHSNOW"

    goto/16 :goto_0

    .line 205
    :sswitch_8d
    const-string v0, "SCENEMODE_SUNSET"

    goto/16 :goto_0

    .line 206
    :sswitch_8e
    const-string v0, "SCENEMODE_DAWNDUSK"

    goto/16 :goto_0

    .line 207
    :sswitch_8f
    const-string v0, "SCENEMODE_FALLCOLOR"

    goto/16 :goto_0

    .line 208
    :sswitch_90
    const-string v0, "SCENEMODE_FIREWORK"

    goto/16 :goto_0

    .line 209
    :sswitch_91
    const-string v0, "SCENEMODE_TEXT"

    goto/16 :goto_0

    .line 210
    :sswitch_92
    const-string v0, "SCENEMODE_CANDLELIGHT"

    goto/16 :goto_0

    .line 211
    :sswitch_93
    const-string v0, "SCENEMODE_BACKLIGHT"

    goto/16 :goto_0

    .line 214
    :sswitch_94
    const-string v0, "FLASHMODE_OFF"

    goto/16 :goto_0

    .line 215
    :sswitch_95
    const-string v0, "FLASHMODE_ON"

    goto/16 :goto_0

    .line 216
    :sswitch_96
    const-string v0, "FLASHMODE_AUTO"

    goto/16 :goto_0

    .line 217
    :sswitch_97
    const-string v0, "FLASHMODE_REDEYE"

    goto/16 :goto_0

    .line 220
    :sswitch_98
    const-string v0, "FOCUSMODE_OFF"

    goto/16 :goto_0

    .line 221
    :sswitch_99
    const-string v0, "FOCUSMODE_AF"

    goto/16 :goto_0

    .line 222
    :sswitch_9a
    const-string v0, "FOCUSMODE_MACRO"

    goto/16 :goto_0

    .line 223
    :sswitch_9b
    const-string v0, "FOCUSMODE_FACEDETECTION"

    goto/16 :goto_0

    .line 226
    :sswitch_9c
    const-string v0, "TIMER_OFF"

    goto/16 :goto_0

    .line 227
    :sswitch_9d
    const-string v0, "TIMER_2S"

    goto/16 :goto_0

    .line 228
    :sswitch_9e
    const-string v0, "TIMER_3S"

    goto/16 :goto_0

    .line 229
    :sswitch_9f
    const-string v0, "TIMER_5S"

    goto/16 :goto_0

    .line 230
    :sswitch_a0
    const-string v0, "TIMER_10S"

    goto/16 :goto_0

    .line 233
    :sswitch_a1
    const-string v0, "WB_AUTO"

    goto/16 :goto_0

    .line 234
    :sswitch_a2
    const-string v0, "WB_DAYLIGHT"

    goto/16 :goto_0

    .line 235
    :sswitch_a3
    const-string v0, "WB_CLOUDY"

    goto/16 :goto_0

    .line 236
    :sswitch_a4
    const-string v0, "WB_INCANDESCENT"

    goto/16 :goto_0

    .line 237
    :sswitch_a5
    const-string v0, "WB_FLUORESCENT"

    goto/16 :goto_0

    .line 238
    :sswitch_a6
    const-string v0, "WB_SHADE"

    goto/16 :goto_0

    .line 239
    :sswitch_a7
    const-string v0, "WB_HORIZON"

    goto/16 :goto_0

    .line 242
    :sswitch_a8
    const-string v0, "EFFECT_NONE"

    goto/16 :goto_0

    .line 243
    :sswitch_a9
    const-string v0, "EFFECT_NEGATIVE"

    goto/16 :goto_0

    .line 244
    :sswitch_aa
    const-string v0, "EFFECT_BW"

    goto/16 :goto_0

    .line 245
    :sswitch_ab
    const-string v0, "EFFECT_SEPIA"

    goto/16 :goto_0

    .line 247
    :sswitch_ac
    const-string v0, "EFFECT_POSTERIZE"

    goto/16 :goto_0

    .line 248
    :sswitch_ad
    const-string v0, "EFFECT_POINT_BLUE"

    goto/16 :goto_0

    .line 249
    :sswitch_ae
    const-string v0, "EFFECT_POINT_RED_YELLOW"

    goto/16 :goto_0

    .line 250
    :sswitch_af
    const-string v0, "EFFECT_POINT_GREEN"

    goto/16 :goto_0

    .line 251
    :sswitch_b0
    const-string v0, "EFFECT_WASHED"

    goto/16 :goto_0

    .line 252
    :sswitch_b1
    const-string v0, "EFFECT_VINTANGE_WARM"

    goto/16 :goto_0

    .line 254
    :sswitch_b2
    const-string v0, "EFFECT_VINTANGE"

    goto/16 :goto_0

    .line 255
    :sswitch_b3
    const-string v0, "EFFECT_VINTANGE_COLD"

    goto/16 :goto_0

    .line 256
    :sswitch_b4
    const-string v0, "EFFECT_SOLARIZE"

    goto/16 :goto_0

    .line 258
    :sswitch_b5
    const-string v0, "EFFECT_NOSTALGIA"

    goto/16 :goto_0

    .line 259
    :sswitch_b6
    const-string v0, "EFFECT_FADED_COLOURS"

    goto/16 :goto_0

    .line 260
    :sswitch_b7
    const-string v0, "EFFECT_RETRO"

    goto/16 :goto_0

    .line 261
    :sswitch_b8
    const-string v0, "EFFECT_SUNSHINE"

    goto/16 :goto_0

    .line 262
    :sswitch_b9
    const-string v0, "EFFECT_OLDPHOTO"

    goto/16 :goto_0

    .line 263
    :sswitch_ba
    const-string v0, "EFFECT_COMIC"

    goto/16 :goto_0

    .line 264
    :sswitch_bb
    const-string v0, "EFFECT_PASTEL_SKETCH"

    goto/16 :goto_0

    .line 265
    :sswitch_bc
    const-string v0, "EFFECT_GOTHIC_NOIR"

    goto/16 :goto_0

    .line 266
    :sswitch_bd
    const-string v0, "EFFECT_IMPRESSIONIST"

    goto/16 :goto_0

    .line 267
    :sswitch_be
    const-string v0, "EFFECT_VIGNETTE_OUTFOCUS"

    goto/16 :goto_0

    .line 268
    :sswitch_bf
    const-string v0, "EFFECT_SANDSTONE"

    goto/16 :goto_0

    .line 269
    :sswitch_c0
    const-string v0, "EFFECT_RAINBOW"

    goto/16 :goto_0

    .line 270
    :sswitch_c1
    const-string v0, "EFFECT_INSTAGRAM_NASHVILLE"

    goto/16 :goto_0

    .line 271
    :sswitch_c2
    const-string v0, "EFFECT_FISHEYE"

    goto/16 :goto_0

    .line 272
    :sswitch_c3
    const-string v0, "EFFECT_FOR_REAL"

    goto/16 :goto_0

    .line 273
    :sswitch_c4
    const-string v0, "EFFECT_STUCCHEVOLE"

    goto/16 :goto_0

    .line 274
    :sswitch_c5
    const-string v0, "EFFECT_NOIR_NOTE"

    goto/16 :goto_0

    .line 275
    :sswitch_c6
    const-string v0, "EFFECT_VINCENT"

    goto/16 :goto_0

    .line 277
    :sswitch_c7
    const-string v0, "EFFECT_DUAL_NORMAL"

    goto/16 :goto_0

    .line 278
    :sswitch_c8
    const-string v0, "EFFECT_DUAL_CUBISM"

    goto/16 :goto_0

    .line 279
    :sswitch_c9
    const-string v0, "EFFECT_DUAL_POLAROID"

    goto/16 :goto_0

    .line 280
    :sswitch_ca
    const-string v0, "EFFECT_DUAL_POSTCARD"

    goto/16 :goto_0

    .line 281
    :sswitch_cb
    const-string v0, "EFFECT_DUAL_SIGNATURE"

    goto/16 :goto_0

    .line 282
    :sswitch_cc
    const-string v0, "EFFECT_DUAL_OVAL_BLUR"

    goto/16 :goto_0

    .line 283
    :sswitch_cd
    const-string v0, "EFFECT_DUAL_CIRCLELENS"

    goto/16 :goto_0

    .line 284
    :sswitch_ce
    const-string v0, "EFFECT_DUAL_SHINY"

    goto/16 :goto_0

    .line 285
    :sswitch_cf
    const-string v0, "EFFECT_DUAL_HEART"

    goto/16 :goto_0

    .line 286
    :sswitch_d0
    const-string v0, "EFFECT_DUAL_EXPOSURE_OVERLAY"

    goto/16 :goto_0

    .line 287
    :sswitch_d1
    const-string v0, "EFFECT_DUAL_SPLIT_VIEW"

    goto/16 :goto_0

    .line 288
    :sswitch_d2
    const-string v0, "EFFECT_DUAL_DOWNLOAD"

    goto/16 :goto_0

    .line 289
    :sswitch_d3
    const-string v0, "EFFECT_DUAL_TRACKING"

    goto/16 :goto_0

    .line 292
    :sswitch_d4
    const-string v0, "ISO_AUTO"

    goto/16 :goto_0

    .line 293
    :sswitch_d5
    const-string v0, "ISO_50"

    goto/16 :goto_0

    .line 294
    :sswitch_d6
    const-string v0, "ISO_100"

    goto/16 :goto_0

    .line 295
    :sswitch_d7
    const-string v0, "ISO_200"

    goto/16 :goto_0

    .line 296
    :sswitch_d8
    const-string v0, "ISO_400"

    goto/16 :goto_0

    .line 297
    :sswitch_d9
    const-string v0, "ISO_800"

    goto/16 :goto_0

    .line 298
    :sswitch_da
    const-string v0, "ISO_1200"

    goto/16 :goto_0

    .line 299
    :sswitch_db
    const-string v0, "ISO_1600"

    goto/16 :goto_0

    .line 300
    :sswitch_dc
    const-string v0, "ISO_2400"

    goto/16 :goto_0

    .line 301
    :sswitch_dd
    const-string v0, "ISO_3200"

    goto/16 :goto_0

    .line 302
    :sswitch_de
    const-string v0, "ISO_SPORTS"

    goto/16 :goto_0

    .line 303
    :sswitch_df
    const-string v0, "ISO_NIGHT"

    goto/16 :goto_0

    .line 304
    :sswitch_e0
    const-string v0, "ISO_MOVIE"

    goto/16 :goto_0

    .line 307
    :sswitch_e1
    const-string v0, "EXPOSUREMETER_CENTER"

    goto/16 :goto_0

    .line 308
    :sswitch_e2
    const-string v0, "EXPOSUREMETER_SPOT"

    goto/16 :goto_0

    .line 309
    :sswitch_e3
    const-string v0, "EXPOSUREMETER_MATRIX"

    goto/16 :goto_0

    .line 312
    :sswitch_e4
    const-string v0, "CAMERA_ANTISHAKE_OFF"

    goto/16 :goto_0

    .line 313
    :sswitch_e5
    const-string v0, "CAMERA_ANTISHAKE_ON"

    goto/16 :goto_0

    .line 315
    :sswitch_e6
    const-string v0, "CAMCORDER_ANTISHAKE_OFF"

    goto/16 :goto_0

    .line 316
    :sswitch_e7
    const-string v0, "CAMCORDER_ANTISHAKE_ON"

    goto/16 :goto_0

    .line 317
    :sswitch_e8
    const-string v0, "CAMCORDER_ANTISHAKE_RSC"

    goto/16 :goto_0

    .line 320
    :sswitch_e9
    const-string v0, "AUTOCONTRAST_OFF"

    goto/16 :goto_0

    .line 321
    :sswitch_ea
    const-string v0, "AUTOCONTRAST_ON"

    goto/16 :goto_0

    .line 324
    :sswitch_eb
    const-string v0, "CAMERA_QUALITY_SUPERFINE"

    goto/16 :goto_0

    .line 325
    :sswitch_ec
    const-string v0, "CAMERA_QUALITY_FINE"

    goto/16 :goto_0

    .line 326
    :sswitch_ed
    const-string v0, "CAMERA_QUALITY_NORMAL"

    goto/16 :goto_0

    .line 328
    :sswitch_ee
    const-string v0, "CAMCORDER_QUALITY_SUPERFINE"

    goto/16 :goto_0

    .line 329
    :sswitch_ef
    const-string v0, "CAMCORDER_QUALITY_FINE"

    goto/16 :goto_0

    .line 330
    :sswitch_f0
    const-string v0, "CAMCORDER_QUALITY_NORMAL"

    goto/16 :goto_0

    .line 333
    :sswitch_f1
    const-string v0, "GUIDELINE_OFF"

    goto/16 :goto_0

    .line 334
    :sswitch_f2
    const-string v0, "GUIDELINE_ON"

    goto/16 :goto_0

    .line 337
    :sswitch_f3
    const-string v0, "REVIEW_OFF"

    goto/16 :goto_0

    .line 338
    :sswitch_f4
    const-string v0, "REVIEW_ON"

    goto/16 :goto_0

    .line 339
    :sswitch_f5
    const-string v0, "REVIEW_2_SEC"

    goto/16 :goto_0

    .line 340
    :sswitch_f6
    const-string v0, "REVIEW_5_SEC"

    goto/16 :goto_0

    .line 343
    :sswitch_f7
    const-string v0, "GPS_OFF"

    goto/16 :goto_0

    .line 344
    :sswitch_f8
    const-string v0, "GPS_ON"

    goto/16 :goto_0

    .line 347
    :sswitch_f9
    const-string v0, "SHUTTER_SOUND_OFF"

    goto/16 :goto_0

    .line 348
    :sswitch_fa
    const-string v0, "SHUTTER_SOUND_ON"

    goto/16 :goto_0

    .line 350
    :sswitch_fb
    const-string v0, "STORAGE_PHONE"

    goto/16 :goto_0

    .line 351
    :sswitch_fc
    const-string v0, "STORAGE_MMC"

    goto/16 :goto_0

    .line 354
    :sswitch_fd
    const-string v0, "CAMERA_RESOLUTION_4128X3096"

    goto/16 :goto_0

    .line 355
    :sswitch_fe
    const-string v0, "CAMERA_RESOLUTION_4128X2322"

    goto/16 :goto_0

    .line 356
    :sswitch_ff
    const-string v0, "CAMERA_RESOLUTION_4096X3072"

    goto/16 :goto_0

    .line 357
    :sswitch_100
    const-string v0, "CAMERA_RESOLUTION_4096X2304"

    goto/16 :goto_0

    .line 358
    :sswitch_101
    const-string v0, "CAMERA_RESOLUTION_3264X2448"

    goto/16 :goto_0

    .line 359
    :sswitch_102
    const-string v0, "CAMERA_RESOLUTION_3264X1968"

    goto/16 :goto_0

    .line 360
    :sswitch_103
    const-string v0, "CAMERA_RESOLUTION_3264X1836"

    goto/16 :goto_0

    .line 361
    :sswitch_104
    const-string v0, "CAMERA_RESOLUTION_3096X3096"

    goto/16 :goto_0

    .line 362
    :sswitch_105
    const-string v0, "CAMERA_RESOLUTION_3072X2304"

    goto/16 :goto_0

    .line 363
    :sswitch_106
    const-string v0, "CAMERA_RESOLUTION_3072X1856"

    goto/16 :goto_0

    .line 364
    :sswitch_107
    const-string v0, "CAMERA_RESOLUTION_2592X1944"

    goto/16 :goto_0

    .line 365
    :sswitch_108
    const-string v0, "CAMERA_RESOLUTION_2560X1920"

    goto/16 :goto_0

    .line 366
    :sswitch_109
    const-string v0, "CAMERA_RESOLUTION_2560X1536"

    goto/16 :goto_0

    .line 367
    :sswitch_10a
    const-string v0, "CAMERA_RESOLUTION_2448X2448"

    goto/16 :goto_0

    .line 368
    :sswitch_10b
    const-string v0, "CAMERA_RESOLUTION_2560X1440"

    goto/16 :goto_0

    .line 369
    :sswitch_10c
    const-string v0, "CAMERA_RESOLUTION_2048X1536"

    goto/16 :goto_0

    .line 370
    :sswitch_10d
    const-string v0, "CAMERA_RESOLUTION_2048X1232"

    goto/16 :goto_0

    .line 371
    :sswitch_10e
    const-string v0, "CAMERA_RESOLUTION_2048X1152"

    goto/16 :goto_0

    .line 372
    :sswitch_10f
    const-string v0, "CAMERA_RESOLUTION_2048X1104"

    goto/16 :goto_0

    .line 373
    :sswitch_110
    const-string v0, "CAMERA_RESOLUTION_1920X1080"

    goto/16 :goto_0

    .line 374
    :sswitch_111
    const-string v0, "CAMERA_RESOLUTION_1600X1200"

    goto/16 :goto_0

    .line 375
    :sswitch_112
    const-string v0, "CAMERA_RESOLUTION_1600X960"

    goto/16 :goto_0

    .line 376
    :sswitch_113
    const-string v0, "CAMERA_RESOLUTION_1632X880"

    goto/16 :goto_0

    .line 377
    :sswitch_114
    const-string v0, "CAMERA_RESOLUTION_1536X864"

    goto/16 :goto_0

    .line 378
    :sswitch_115
    const-string v0, "CAMERA_RESOLUTION_1392X1392"

    goto/16 :goto_0

    .line 379
    :sswitch_116
    const-string v0, "CAMERA_RESOLUTION_1440X1080"

    goto/16 :goto_0

    .line 380
    :sswitch_117
    const-string v0, "CAMERA_RESOLUTION_1080X1080"

    goto/16 :goto_0

    .line 381
    :sswitch_118
    const-string v0, "CAMERA_RESOLUTION_1280X960"

    goto/16 :goto_0

    .line 382
    :sswitch_119
    const-string v0, "CAMERA_RESOLUTION_1280X720"

    goto/16 :goto_0

    .line 383
    :sswitch_11a
    const-string v0, "CAMERA_RESOLUTION_1248X672"

    goto/16 :goto_0

    .line 384
    :sswitch_11b
    const-string v0, "CAMERA_RESOLUTION_800X480"

    goto/16 :goto_0

    .line 385
    :sswitch_11c
    const-string v0, "CAMERA_RESOLUTION_800X450"

    goto/16 :goto_0

    .line 386
    :sswitch_11d
    const-string v0, "CAMERA_RESOLUTION_640X480"

    goto/16 :goto_0

    .line 387
    :sswitch_11e
    const-string v0, "CAMERA_RESOLUTION_320X240"

    goto/16 :goto_0

    .line 388
    :sswitch_11f
    const-string v0, "CAMERA_RESOLUTION_1024X768"

    goto/16 :goto_0

    .line 389
    :sswitch_120
    const-string v0, "CAMERA_RESOLUTION_960X540"

    goto/16 :goto_0

    .line 390
    :sswitch_121
    const-string v0, "CAMERA_RESOLUTION_1024X576"

    goto/16 :goto_0

    .line 391
    :sswitch_122
    const-string v0, "CAMERA_RESOLUTION_640X360"

    goto/16 :goto_0

    .line 394
    :sswitch_123
    const-string v0, "CAMCORDER_RESOLUTION_1920X1080"

    goto/16 :goto_0

    .line 395
    :sswitch_124
    const-string v0, "CAMCORDER_RESOLUTION_1440X1080"

    goto/16 :goto_0

    .line 396
    :sswitch_125
    const-string v0, "CAMCORDER_RESOLUTION_1080X1080"

    goto/16 :goto_0

    .line 397
    :sswitch_126
    const-string v0, "CAMCORDER_RESOLUTION_1280X720"

    goto/16 :goto_0

    .line 398
    :sswitch_127
    const-string v0, "CAMCORDER_RESOLUTION_960X720"

    goto/16 :goto_0

    .line 399
    :sswitch_128
    const-string v0, "CAMCORDER_RESOLUTION_800X450"

    goto/16 :goto_0

    .line 400
    :sswitch_129
    const-string v0, "CAMCORDER_RESOLUTION_720X480"

    goto/16 :goto_0

    .line 401
    :sswitch_12a
    const-string v0, "CAMCORDER_RESOLUTION_640X480"

    goto/16 :goto_0

    .line 402
    :sswitch_12b
    const-string v0, "CAMCORDER_RESOLUTION_400X240"

    goto/16 :goto_0

    .line 403
    :sswitch_12c
    const-string v0, "CAMCORDER_RESOLUTION_320X240"

    goto/16 :goto_0

    .line 404
    :sswitch_12d
    const-string v0, "CAMCORDER_RESOLUTION_176X144"

    goto/16 :goto_0

    .line 405
    :sswitch_12e
    const-string v0, "CAMCORDER_RESOLUTION_3840X2160"

    goto/16 :goto_0

    .line 406
    :sswitch_12f
    const-string v0, "CAMCORDER_RESOLUTION_640X360"

    goto/16 :goto_0

    .line 407
    :sswitch_130
    const-string v0, "CAMCORDER_RESOLUTION_1920X1080_60FPS"

    goto/16 :goto_0

    .line 409
    :sswitch_131
    const-string v0, "MENUID_CAMCORDER_RECORDINGMODE"

    goto/16 :goto_0

    .line 410
    :sswitch_132
    const-string v0, "MENUID_CAMCORDER_RESOLUTION"

    goto/16 :goto_0

    .line 411
    :sswitch_133
    const-string v0, "MENUID_CAMCORDER_FOCUSMODE"

    goto/16 :goto_0

    .line 412
    :sswitch_134
    const-string v0, "MENUID_CAMCORDER_QUALITY"

    goto/16 :goto_0

    .line 413
    :sswitch_135
    const-string v0, "MENUID_CAMCORDER_AUDIORECORDING"

    goto/16 :goto_0

    .line 414
    :sswitch_136
    const-string v0, "MENUID_CAMCORDER_SETTINGS"

    goto/16 :goto_0

    .line 415
    :sswitch_137
    const-string v0, "MENUID_COMMON_SETTINGS"

    goto/16 :goto_0

    .line 416
    :sswitch_138
    const-string v0, "MENUID_CAMCORDER_ANTISHAKE"

    goto/16 :goto_0

    .line 417
    :sswitch_139
    const-string v0, "MENUID_CAMCORDER_RECORDING"

    goto/16 :goto_0

    .line 418
    :sswitch_13a
    const-string v0, "MENUID_CAMCORDER_SELF_RESOLUTION"

    goto/16 :goto_0

    .line 419
    :sswitch_13b
    const-string v0, "MENUID_CAMCORDER_SELF_RECORDINGMODE"

    goto/16 :goto_0

    .line 420
    :sswitch_13c
    const-string v0, "MENUID_EASYMODE_RECORDING"

    goto/16 :goto_0

    .line 421
    :sswitch_13d
    const-string v0, "MENUID_EASYMODE_FLASHMODE"

    goto/16 :goto_0

    .line 422
    :sswitch_13e
    const-string v0, "MENUID_CAMCORDER_ZOOM"

    goto/16 :goto_0

    .line 423
    :sswitch_13f
    const-string v0, "MENUID_LIMITED_CAMCORDER_RECORDINGMODE"

    goto/16 :goto_0

    .line 424
    :sswitch_140
    const-string v0, "MENUID_CAMCORDER_AUDIOZOOM"

    goto/16 :goto_0

    .line 426
    :sswitch_141
    const-string v0, "MENUID_POPUP_CLOSE"

    goto/16 :goto_0

    .line 427
    :sswitch_142
    const-string v0, "MENUID_POPUP_INFO"

    goto/16 :goto_0

    .line 428
    :sswitch_143
    const-string v0, "MENUID_HELP_VOICE"

    goto/16 :goto_0

    .line 429
    :sswitch_144
    const-string v0, "MENUID_HELP_VOICE"

    goto/16 :goto_0

    .line 430
    :sswitch_145
    const-string v0, "MENUID_HELP_SELF_REC"

    goto/16 :goto_0

    .line 431
    :sswitch_146
    const-string v0, "MENUID_HELP_SHARE"

    goto/16 :goto_0

    .line 432
    :sswitch_147
    const-string v0, "MENUID_HELP_AUTO_NIGHT_DETECTION"

    goto/16 :goto_0

    .line 433
    :sswitch_148
    const-string v0, "MENUID_HELP_BURST_SHOT"

    goto/16 :goto_0

    .line 434
    :sswitch_149
    const-string v0, "MENUID_HELP_FACE_DETECTION"

    goto/16 :goto_0

    .line 435
    :sswitch_14a
    const-string v0, "MENUID_HELP_ANTI_SHAKE"

    goto/16 :goto_0

    .line 436
    :sswitch_14b
    const-string v0, "MENUID_HELP_GUIDELINES"

    goto/16 :goto_0

    .line 437
    :sswitch_14c
    const-string v0, "MENUID_HELP_LIMITED_SHARE_MODE_FOR_RVF"

    goto/16 :goto_0

    .line 438
    :sswitch_14d
    const-string v0, "MENUID_HELP_LIMITED_SHARE_MODE_FOR_BUDDY_RVF"

    goto/16 :goto_0

    .line 439
    :sswitch_14e
    const-string v0, "MENUID_HELP_GPS"

    goto/16 :goto_0

    .line 440
    :sswitch_14f
    const-string v0, "MENUID_HELP_VIDEO_STABILISATION"

    goto/16 :goto_0

    .line 441
    :sswitch_150
    const-string v0, "MENUID_HELP_REVIEW"

    goto/16 :goto_0

    .line 443
    :sswitch_151
    const-string v0, "MENUID_PROGRESSING_POPUP"

    goto/16 :goto_0

    .line 444
    :sswitch_152
    const-string v0, "MENUID_PROGRESSING_POPUP_GOLF"

    goto/16 :goto_0

    .line 447
    :sswitch_153
    const-string v0, "RECORDINGMODE_NORMAL"

    goto/16 :goto_0

    .line 448
    :sswitch_154
    const-string v0, "RECORDINGMODE_SHARING"

    goto/16 :goto_0

    .line 449
    :sswitch_155
    const-string v0, "RECORDINGMODE_SLOWMOTION"

    goto/16 :goto_0

    .line 450
    :sswitch_156
    const-string v0, "RECORDINGMODE_FASTMOTION"

    goto/16 :goto_0

    .line 451
    :sswitch_157
    const-string v0, "RECORDINGMODE_BROADCASTING"

    goto/16 :goto_0

    .line 452
    :sswitch_158
    const-string v0, "RECORDINGMODE_EMAIL"

    goto/16 :goto_0

    .line 453
    :sswitch_159
    const-string v0, "RECORDINGMODE_FHD_60FPS"

    goto/16 :goto_0

    .line 456
    :sswitch_15a
    const-string v0, "SHUTTER_CAMERA"

    goto/16 :goto_0

    .line 457
    :sswitch_15b
    const-string v0, "SHUTTER_CAMCORDER"

    goto/16 :goto_0

    .line 460
    :sswitch_15c
    const-string v0, "OUTDOOR_VISIBILITY_OFF"

    goto/16 :goto_0

    .line 461
    :sswitch_15d
    const-string v0, "OUTDOOR_VISIBILITY_ON"

    goto/16 :goto_0

    .line 464
    :sswitch_15e
    const-string v0, "AUDIO_RECORDING_OFF"

    goto/16 :goto_0

    .line 465
    :sswitch_15f
    const-string v0, "AUDIO_RECORDING_ON"

    goto/16 :goto_0

    .line 468
    :sswitch_160
    const-string v0, "EXPOSURE_VALUE_PLUS"

    goto/16 :goto_0

    .line 469
    :sswitch_161
    const-string v0, "EXPOSURE_VALUE_MINUS"

    goto/16 :goto_0

    .line 470
    :sswitch_162
    const-string v0, "EXPOSURE_VALUE_MINUS_2_0"

    goto/16 :goto_0

    .line 471
    :sswitch_163
    const-string v0, "EXPOSURE_VALUE_MINUS_1_5"

    goto/16 :goto_0

    .line 472
    :sswitch_164
    const-string v0, "EXPOSURE_VALUE_MINUS_1_0"

    goto/16 :goto_0

    .line 473
    :sswitch_165
    const-string v0, "EXPOSURE_VALUE_MINUS_0_5"

    goto/16 :goto_0

    .line 474
    :sswitch_166
    const-string v0, "EXPOSURE_VALUE_0"

    goto/16 :goto_0

    .line 475
    :sswitch_167
    const-string v0, "EXPOSURE_VALUE_PLUS_0_5"

    goto/16 :goto_0

    .line 476
    :sswitch_168
    const-string v0, "EXPOSURE_VALUE_PLUS_1_0"

    goto/16 :goto_0

    .line 477
    :sswitch_169
    const-string v0, "EXPOSURE_VALUE_PLUS_1_5"

    goto/16 :goto_0

    .line 478
    :sswitch_16a
    const-string v0, "EXPOSURE_VALUE_PLUS_2_0"

    goto/16 :goto_0

    .line 481
    :sswitch_16b
    const-string v0, "CONTEXT_MENU_EDIT"

    goto/16 :goto_0

    .line 482
    :sswitch_16c
    const-string v0, "CONTEXT_MENU_HELP"

    goto/16 :goto_0

    .line 483
    :sswitch_16d
    const-string v0, "CONTEXT_MENU_RICHTONE"

    goto/16 :goto_0

    .line 484
    :sswitch_16e
    const-string v0, "CONTEXT_MENU_SETTING"

    goto/16 :goto_0

    .line 485
    :sswitch_16f
    const-string v0, "CONTEXT_MENU_EFFECT"

    goto/16 :goto_0

    .line 486
    :sswitch_170
    const-string v0, "CONTEXT_MENU_DOWNLOAD"

    goto/16 :goto_0

    .line 489
    :sswitch_171
    const-string v0, "SOUND_OFF"

    goto/16 :goto_0

    .line 490
    :sswitch_172
    const-string v0, "SOUND_ON"

    goto/16 :goto_0

    .line 493
    :sswitch_173
    const-string v0, "FLIP_OFF"

    goto/16 :goto_0

    .line 494
    :sswitch_174
    const-string v0, "FLIP_ON"

    goto/16 :goto_0

    .line 497
    :sswitch_175
    const-string v0, "SHARE_OFF"

    goto/16 :goto_0

    .line 498
    :sswitch_176
    const-string v0, "SHARE_SHOT"

    goto/16 :goto_0

    .line 499
    :sswitch_177
    const-string v0, "SHARE_BUDDY"

    goto/16 :goto_0

    .line 500
    :sswitch_178
    const-string v0, "SHARE_CHATON"

    goto/16 :goto_0

    .line 501
    :sswitch_179
    const-string v0, "SHARE_DIRECT_SHARE"

    goto/16 :goto_0

    .line 502
    :sswitch_17a
    const-string v0, "SHARE_REMOTE_VIEWFINDER"

    goto/16 :goto_0

    .line 504
    :sswitch_17b
    const-string v0, "USER_PROFILE"

    goto/16 :goto_0

    .line 505
    :sswitch_17c
    const-string v0, "PREVIEW_FILE_RECEIVED"

    goto/16 :goto_0

    .line 506
    :sswitch_17d
    const-string v0, "PREVIEW_FILE_RECEIVED_OFF"

    goto/16 :goto_0

    .line 507
    :sswitch_17e
    const-string v0, "PREVIEW_FILE_RECEIVED_ON"

    goto/16 :goto_0

    .line 508
    :sswitch_17f
    const-string v0, "NETWORK"

    goto/16 :goto_0

    .line 511
    :sswitch_180
    const-string v0, "BURST_OFF"

    goto/16 :goto_0

    .line 512
    :sswitch_181
    const-string v0, "BURST_ON"

    goto/16 :goto_0

    .line 515
    :sswitch_182
    const-string v0, "CONTEXTUAL_FILENAME_OFF"

    goto/16 :goto_0

    .line 516
    :sswitch_183
    const-string v0, "CONTEXTUAL_FILENAME_ON"

    goto/16 :goto_0

    .line 519
    :sswitch_184
    const-string v0, "VOICECOMMAND_OFF"

    goto/16 :goto_0

    .line 520
    :sswitch_185
    const-string v0, "VOICECOMMAND_ON"

    goto/16 :goto_0

    .line 523
    :sswitch_186
    const-string v0, "RICHTONE_ONLY"

    goto/16 :goto_0

    .line 524
    :sswitch_187
    const-string v0, "RICHTONE_AND_ORIGINAL"

    goto/16 :goto_0

    .line 527
    :sswitch_188
    const-string v0, "VOLUME_KEY_AS_ZOOM"

    goto/16 :goto_0

    .line 528
    :sswitch_189
    const-string v0, "VOLUME_KEY_AS_CAMERA"

    goto/16 :goto_0

    .line 529
    :sswitch_18a
    const-string v0, "VOLUME_KEY_AS_RECORD"

    goto/16 :goto_0

    .line 532
    :sswitch_18b
    const-string v0, "SOUNDSHOT_MODE_AUTO"

    goto/16 :goto_0

    .line 533
    :sswitch_18c
    const-string v0, "SOUNDSHOT_MODE_ADD_VOICE"

    goto/16 :goto_0

    .line 534
    :sswitch_18d
    const-string v0, "SOUNDSHOT_MODE_ADD_SOUND"

    goto/16 :goto_0

    .line 537
    :sswitch_18e
    const-string v0, "COVERMODE_FLASHMODE_OFF"

    goto/16 :goto_0

    .line 538
    :sswitch_18f
    const-string v0, "COVERMODE_FLASHMODE_ON"

    goto/16 :goto_0

    .line 539
    :sswitch_190
    const-string v0, "COVERMODE_FLASHMODE_AUTO"

    goto/16 :goto_0

    .line 542
    :sswitch_191
    const-string v0, "BEAUTYFACE_LIVE_ON"

    goto/16 :goto_0

    .line 543
    :sswitch_192
    const-string v0, "BEAUTYFACE_LIVE_OFF"

    goto/16 :goto_0

    .line 546
    :sswitch_193
    const-string v0, "EASYMODE_FLASHMODE_OFF"

    goto/16 :goto_0

    .line 547
    :sswitch_194
    const-string v0, "EASYMODE_FLASHMODE_ON"

    goto/16 :goto_0

    .line 548
    :sswitch_195
    const-string v0, "EASYMODE_FLASHMODE_AUTO"

    goto/16 :goto_0

    .line 551
    :sswitch_196
    const-string v0, "AUTO_NIGHT_DETECTION_OFF"

    goto/16 :goto_0

    .line 552
    :sswitch_197
    const-string v0, "AUTO_NIGHT_DETECTION_ON"

    goto/16 :goto_0

    .line 555
    :sswitch_198
    const-string v0, "SOUNDSHOT_SOUND_EFFECT_1"

    goto/16 :goto_0

    .line 556
    :sswitch_199
    const-string v0, "SOUNDSHOT_SOUND_EFFECT_2"

    goto/16 :goto_0

    .line 557
    :sswitch_19a
    const-string v0, "SOUNDSHOT_SOUND_EFFECT_3"

    goto/16 :goto_0

    .line 558
    :sswitch_19b
    const-string v0, "SOUNDSHOT_SOUND_EFFECT_4"

    goto/16 :goto_0

    .line 559
    :sswitch_19c
    const-string v0, "SOUNDSHOT_SOUND_EFFECT_5"

    goto/16 :goto_0

    .line 562
    :sswitch_19d
    const-string v0, "FACE_DETECTION_OFF"

    goto/16 :goto_0

    .line 563
    :sswitch_19e
    const-string v0, "FACE_DETECTION_ON"

    goto/16 :goto_0

    .line 566
    :sswitch_19f
    const-string v0, "MENUID_SHARE_MODE_SUBMENU"

    goto/16 :goto_0

    .line 567
    :sswitch_1a0
    const-string v0, "MENUID_RECORDING_MODE_SUBMENU"

    goto/16 :goto_0

    .line 568
    :sswitch_1a1
    const-string v0, "MENUID_SLOWMOTION_SPEED"

    goto/16 :goto_0

    .line 569
    :sswitch_1a2
    const-string v0, "MENUID_FASTMOTION_SPEED"

    goto/16 :goto_0

    .line 570
    :sswitch_1a3
    const-string v0, "MENUID_SHARE_MODE_ON"

    goto/16 :goto_0

    .line 573
    :sswitch_1a4
    const-string v0, "SLOWMOTION_SPEED_2X_SLOWER"

    goto/16 :goto_0

    .line 574
    :sswitch_1a5
    const-string v0, "SLOWMOTION_SPEED_4X_SLOWER"

    goto/16 :goto_0

    .line 575
    :sswitch_1a6
    const-string v0, "SLOWMOTION_SPEED_8X_SLOWER"

    goto/16 :goto_0

    .line 576
    :sswitch_1a7
    const-string v0, "FASTMOTION_SPEED_2X_FASTER"

    goto/16 :goto_0

    .line 577
    :sswitch_1a8
    const-string v0, "FASTMOTION_SPEED_4X_FASTER"

    goto/16 :goto_0

    .line 578
    :sswitch_1a9
    const-string v0, "FASTMOTION_SPEED_8X_FASTER"

    goto/16 :goto_0

    .line 581
    :sswitch_1aa
    const-string v0, "ZOOM_PLUS"

    goto/16 :goto_0

    .line 582
    :sswitch_1ab
    const-string v0, "ZOOM_MINUS"

    goto/16 :goto_0

    .line 583
    :sswitch_1ac
    const-string v0, "CAMCORDER_AUDIOZOOM_ON"

    goto/16 :goto_0

    .line 584
    :sswitch_1ad
    const-string v0, "CAMCORDER_AUDIOZOOM_OFF"

    goto/16 :goto_0

    .line 587
    :sswitch_1ae
    const-string v0, "VOICE_GUIDE_OFF"

    goto/16 :goto_0

    .line 588
    :sswitch_1af
    const-string v0, "VOICE_GUIDE_OFF"

    goto/16 :goto_0

    .line 591
    :sswitch_1b0
    const-string v0, "TOUCH_TO_CAPTURE_OFF"

    goto/16 :goto_0

    .line 592
    :sswitch_1b1
    const-string v0, "TOUCH_TO_CAPTURE_ON"

    goto/16 :goto_0

    .line 595
    :sswitch_1b2
    const-string v0, "DUAL_MODE_OFF"

    goto/16 :goto_0

    .line 596
    :sswitch_1b3
    const-string v0, "DUAL_MODE_ON"

    goto/16 :goto_0

    .line 597
    :sswitch_1b4
    const-string v0, "DUAL_MODE_SYNC"

    goto/16 :goto_0

    .line 598
    :sswitch_1b5
    const-string v0, "DUAL_MODE_ASYNC"

    goto/16 :goto_0

    .line 601
    :sswitch_1b6
    const-string v0, "BEAUTY_PLUS"

    goto/16 :goto_0

    .line 602
    :sswitch_1b7
    const-string v0, "BEAUTY_MINUS"

    goto/16 :goto_0

    .line 605
    :sswitch_1b8
    const-string v0, "NFC_CONNECT_VIEW"

    goto/16 :goto_0

    .line 608
    :sswitch_1b9
    const-string v0, "EXT_EFFECT_NONE"

    goto/16 :goto_0

    .line 609
    :sswitch_1ba
    const-string v0, "EXT_EFFECT_END"

    goto/16 :goto_0

    .line 610
    :sswitch_1bb
    const-string v0, "MENUID_EXTERNAL_EFFECT"

    goto/16 :goto_0

    .line 611
    :sswitch_1bc
    const-string v0, "MENUID_EXTERNAL_DOWNLOAD"

    goto/16 :goto_0

    .line 612
    :sswitch_1bd
    const-string v0, "MENUID_DOWNLOAD_MENU"

    goto/16 :goto_0

    .line 613
    :sswitch_1be
    const-string v0, "MENUID_PRELOAD_MENU"

    goto/16 :goto_0

    .line 614
    :sswitch_1bf
    const-string v0, "MENUID_EXTERNAL_NOITEM"

    goto/16 :goto_0

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x1b -> :sswitch_15
        0x1c -> :sswitch_16
        0x1d -> :sswitch_17
        0x1e -> :sswitch_18
        0x1f -> :sswitch_19
        0x20 -> :sswitch_1a
        0x21 -> :sswitch_1b
        0x22 -> :sswitch_1c
        0x23 -> :sswitch_1d
        0x24 -> :sswitch_1e
        0x25 -> :sswitch_1f
        0x26 -> :sswitch_20
        0x27 -> :sswitch_21
        0x28 -> :sswitch_22
        0x29 -> :sswitch_23
        0x2a -> :sswitch_24
        0x2b -> :sswitch_25
        0x2c -> :sswitch_26
        0x2d -> :sswitch_27
        0x2e -> :sswitch_28
        0x2f -> :sswitch_29
        0x30 -> :sswitch_2a
        0x31 -> :sswitch_2b
        0x32 -> :sswitch_2c
        0x33 -> :sswitch_2d
        0x34 -> :sswitch_2e
        0x35 -> :sswitch_2f
        0x37 -> :sswitch_30
        0x38 -> :sswitch_31
        0x39 -> :sswitch_32
        0x3a -> :sswitch_33
        0x3b -> :sswitch_34
        0x3d -> :sswitch_35
        0x3e -> :sswitch_36
        0x3f -> :sswitch_37
        0x40 -> :sswitch_38
        0x41 -> :sswitch_39
        0x42 -> :sswitch_3a
        0x43 -> :sswitch_3b
        0x44 -> :sswitch_3c
        0x45 -> :sswitch_3d
        0x46 -> :sswitch_3e
        0x47 -> :sswitch_3f
        0x48 -> :sswitch_40
        0x49 -> :sswitch_41
        0x4a -> :sswitch_42
        0x4b -> :sswitch_43
        0x4d -> :sswitch_44
        0x4e -> :sswitch_45
        0x4f -> :sswitch_46
        0x50 -> :sswitch_47
        0x51 -> :sswitch_48
        0x52 -> :sswitch_49
        0x53 -> :sswitch_4a
        0x54 -> :sswitch_4b
        0x55 -> :sswitch_4c
        0x56 -> :sswitch_4d
        0x57 -> :sswitch_4e
        0x58 -> :sswitch_4f
        0x59 -> :sswitch_50
        0x5a -> :sswitch_51
        0x5b -> :sswitch_52
        0x5c -> :sswitch_53
        0x5d -> :sswitch_54
        0x5e -> :sswitch_55
        0x5f -> :sswitch_56
        0x60 -> :sswitch_57
        0x61 -> :sswitch_58
        0x62 -> :sswitch_59
        0x63 -> :sswitch_5a
        0x64 -> :sswitch_5b
        0x65 -> :sswitch_5c
        0x66 -> :sswitch_5d
        0x67 -> :sswitch_5e
        0x68 -> :sswitch_5f
        0x69 -> :sswitch_60
        0x6a -> :sswitch_61
        0x6b -> :sswitch_62
        0x6c -> :sswitch_63
        0x6d -> :sswitch_64
        0x6e -> :sswitch_65
        0x6f -> :sswitch_66
        0xc8 -> :sswitch_67
        0xc9 -> :sswitch_68
        0xca -> :sswitch_69
        0x12c -> :sswitch_6a
        0x12d -> :sswitch_6b
        0x12e -> :sswitch_6c
        0x12f -> :sswitch_6d
        0x130 -> :sswitch_6e
        0x131 -> :sswitch_6f
        0x133 -> :sswitch_70
        0x135 -> :sswitch_71
        0x136 -> :sswitch_72
        0x137 -> :sswitch_73
        0x139 -> :sswitch_74
        0x13a -> :sswitch_75
        0x13c -> :sswitch_76
        0x13e -> :sswitch_77
        0x13f -> :sswitch_78
        0x140 -> :sswitch_79
        0x141 -> :sswitch_7a
        0x143 -> :sswitch_7b
        0x147 -> :sswitch_7c
        0x148 -> :sswitch_7d
        0x149 -> :sswitch_7e
        0x14b -> :sswitch_7f
        0x14c -> :sswitch_80
        0x14d -> :sswitch_81
        0x14e -> :sswitch_82
        0x14f -> :sswitch_83
        0x150 -> :sswitch_84
        0x151 -> :sswitch_85
        0x1f4 -> :sswitch_86
        0x1f5 -> :sswitch_87
        0x1f6 -> :sswitch_88
        0x1f7 -> :sswitch_89
        0x1f8 -> :sswitch_8a
        0x1f9 -> :sswitch_8b
        0x1fa -> :sswitch_8c
        0x1fb -> :sswitch_8d
        0x1fc -> :sswitch_8e
        0x1fd -> :sswitch_8f
        0x1fe -> :sswitch_90
        0x1ff -> :sswitch_91
        0x200 -> :sswitch_92
        0x201 -> :sswitch_93
        0x258 -> :sswitch_94
        0x259 -> :sswitch_95
        0x25a -> :sswitch_96
        0x25b -> :sswitch_97
        0x2bc -> :sswitch_98
        0x2bd -> :sswitch_99
        0x2be -> :sswitch_9a
        0x2bf -> :sswitch_9b
        0x320 -> :sswitch_9c
        0x321 -> :sswitch_9d
        0x322 -> :sswitch_9e
        0x323 -> :sswitch_9f
        0x324 -> :sswitch_a0
        0x384 -> :sswitch_a1
        0x385 -> :sswitch_a2
        0x386 -> :sswitch_a3
        0x387 -> :sswitch_a4
        0x388 -> :sswitch_a5
        0x389 -> :sswitch_a6
        0x38a -> :sswitch_a7
        0x3e8 -> :sswitch_a8
        0x3e9 -> :sswitch_a9
        0x3ea -> :sswitch_aa
        0x3eb -> :sswitch_ab
        0x3f7 -> :sswitch_ac
        0x3f8 -> :sswitch_ad
        0x3f9 -> :sswitch_ae
        0x3fa -> :sswitch_af
        0x3fb -> :sswitch_b0
        0x3fc -> :sswitch_b1
        0x3fd -> :sswitch_b2
        0x3fe -> :sswitch_b3
        0x3ff -> :sswitch_b4
        0x404 -> :sswitch_b5
        0x405 -> :sswitch_b6
        0x406 -> :sswitch_b7
        0x407 -> :sswitch_b8
        0x408 -> :sswitch_b9
        0x409 -> :sswitch_ba
        0x40a -> :sswitch_bb
        0x40b -> :sswitch_bc
        0x40c -> :sswitch_bd
        0x40d -> :sswitch_be
        0x40e -> :sswitch_bf
        0x40f -> :sswitch_c0
        0x410 -> :sswitch_c1
        0x411 -> :sswitch_c2
        0x412 -> :sswitch_c3
        0x413 -> :sswitch_c4
        0x414 -> :sswitch_c5
        0x415 -> :sswitch_c6
        0x41a -> :sswitch_c7
        0x41b -> :sswitch_c8
        0x41c -> :sswitch_c9
        0x41d -> :sswitch_ca
        0x41e -> :sswitch_cb
        0x41f -> :sswitch_cc
        0x420 -> :sswitch_cd
        0x421 -> :sswitch_ce
        0x422 -> :sswitch_cf
        0x423 -> :sswitch_d0
        0x424 -> :sswitch_d1
        0x425 -> :sswitch_d2
        0x426 -> :sswitch_d3
        0x44c -> :sswitch_d4
        0x44d -> :sswitch_d5
        0x44e -> :sswitch_d6
        0x44f -> :sswitch_d7
        0x450 -> :sswitch_d8
        0x451 -> :sswitch_d9
        0x452 -> :sswitch_da
        0x453 -> :sswitch_db
        0x454 -> :sswitch_dc
        0x455 -> :sswitch_dd
        0x456 -> :sswitch_de
        0x457 -> :sswitch_df
        0x458 -> :sswitch_e0
        0x4b0 -> :sswitch_e1
        0x4b1 -> :sswitch_e2
        0x4b2 -> :sswitch_e3
        0x578 -> :sswitch_e4
        0x579 -> :sswitch_e5
        0x57a -> :sswitch_e6
        0x57b -> :sswitch_e7
        0x57c -> :sswitch_e8
        0x5dc -> :sswitch_e9
        0x5dd -> :sswitch_ea
        0x6a4 -> :sswitch_eb
        0x6a5 -> :sswitch_ec
        0x6a6 -> :sswitch_ed
        0x6a7 -> :sswitch_ee
        0x6a8 -> :sswitch_ef
        0x6a9 -> :sswitch_f0
        0x708 -> :sswitch_f1
        0x709 -> :sswitch_f2
        0x76c -> :sswitch_f3
        0x76d -> :sswitch_f4
        0x76e -> :sswitch_f5
        0x76f -> :sswitch_f6
        0x7d0 -> :sswitch_f7
        0x7d1 -> :sswitch_f8
        0x834 -> :sswitch_f9
        0x835 -> :sswitch_fa
        0x898 -> :sswitch_fb
        0x899 -> :sswitch_fc
        0x8fc -> :sswitch_fd
        0x8fd -> :sswitch_fe
        0x8fe -> :sswitch_ff
        0x8ff -> :sswitch_100
        0x900 -> :sswitch_101
        0x901 -> :sswitch_102
        0x902 -> :sswitch_103
        0x903 -> :sswitch_105
        0x904 -> :sswitch_106
        0x905 -> :sswitch_107
        0x906 -> :sswitch_108
        0x907 -> :sswitch_109
        0x908 -> :sswitch_10b
        0x909 -> :sswitch_10c
        0x90a -> :sswitch_10d
        0x90b -> :sswitch_10e
        0x90c -> :sswitch_10f
        0x90d -> :sswitch_110
        0x90e -> :sswitch_111
        0x90f -> :sswitch_112
        0x910 -> :sswitch_113
        0x911 -> :sswitch_114
        0x912 -> :sswitch_115
        0x913 -> :sswitch_116
        0x914 -> :sswitch_118
        0x915 -> :sswitch_119
        0x916 -> :sswitch_11a
        0x917 -> :sswitch_11b
        0x918 -> :sswitch_11c
        0x919 -> :sswitch_11d
        0x91a -> :sswitch_11e
        0x91b -> :sswitch_11f
        0x91c -> :sswitch_120
        0x91d -> :sswitch_121
        0x91e -> :sswitch_122
        0x91f -> :sswitch_10a
        0x920 -> :sswitch_117
        0x921 -> :sswitch_104
        0x960 -> :sswitch_123
        0x961 -> :sswitch_124
        0x962 -> :sswitch_126
        0x963 -> :sswitch_127
        0x964 -> :sswitch_128
        0x965 -> :sswitch_129
        0x966 -> :sswitch_12a
        0x967 -> :sswitch_12b
        0x968 -> :sswitch_12c
        0x969 -> :sswitch_12d
        0x96a -> :sswitch_12e
        0x96b -> :sswitch_12f
        0x96c -> :sswitch_130
        0x96d -> :sswitch_125
        0xbb8 -> :sswitch_131
        0xbb9 -> :sswitch_132
        0xbba -> :sswitch_133
        0xbbb -> :sswitch_134
        0xbbc -> :sswitch_135
        0xbbd -> :sswitch_136
        0xbbe -> :sswitch_137
        0xbbf -> :sswitch_138
        0xbc0 -> :sswitch_139
        0xbc1 -> :sswitch_13a
        0xbc2 -> :sswitch_13b
        0xbc3 -> :sswitch_13c
        0xbc4 -> :sswitch_13d
        0xbc5 -> :sswitch_13e
        0xbc6 -> :sswitch_13f
        0xbc7 -> :sswitch_140
        0xbcc -> :sswitch_141
        0xbcd -> :sswitch_142
        0xbce -> :sswitch_143
        0xbcf -> :sswitch_144
        0xbd0 -> :sswitch_145
        0xbd1 -> :sswitch_146
        0xbd2 -> :sswitch_147
        0xbd3 -> :sswitch_148
        0xbd4 -> :sswitch_149
        0xbd5 -> :sswitch_14a
        0xbd6 -> :sswitch_14b
        0xbd7 -> :sswitch_14c
        0xbd8 -> :sswitch_14d
        0xbd9 -> :sswitch_14e
        0xbda -> :sswitch_14f
        0xbdb -> :sswitch_150
        0xbea -> :sswitch_151
        0xbeb -> :sswitch_152
        0xc1c -> :sswitch_153
        0xc1d -> :sswitch_154
        0xc1e -> :sswitch_155
        0xc1f -> :sswitch_156
        0xc20 -> :sswitch_157
        0xc21 -> :sswitch_158
        0xc22 -> :sswitch_159
        0xc80 -> :sswitch_15a
        0xc81 -> :sswitch_15b
        0xd48 -> :sswitch_15c
        0xd49 -> :sswitch_15d
        0xdac -> :sswitch_15e
        0xdad -> :sswitch_15f
        0xe10 -> :sswitch_160
        0xe11 -> :sswitch_161
        0xe12 -> :sswitch_162
        0xe13 -> :sswitch_163
        0xe14 -> :sswitch_164
        0xe15 -> :sswitch_165
        0xe16 -> :sswitch_166
        0xe17 -> :sswitch_167
        0xe18 -> :sswitch_168
        0xe19 -> :sswitch_169
        0xe1a -> :sswitch_16a
        0xe74 -> :sswitch_16b
        0xe75 -> :sswitch_16c
        0xe76 -> :sswitch_16d
        0xe77 -> :sswitch_16e
        0xe78 -> :sswitch_16f
        0xe79 -> :sswitch_170
        0xed8 -> :sswitch_171
        0xed9 -> :sswitch_172
        0xf3c -> :sswitch_173
        0xf3d -> :sswitch_174
        0xfa0 -> :sswitch_175
        0xfa1 -> :sswitch_176
        0xfa2 -> :sswitch_177
        0xfa3 -> :sswitch_178
        0xfa4 -> :sswitch_179
        0xfa5 -> :sswitch_17a
        0x1004 -> :sswitch_17b
        0x1005 -> :sswitch_17c
        0x1006 -> :sswitch_17d
        0x1007 -> :sswitch_17e
        0x1008 -> :sswitch_17f
        0x1194 -> :sswitch_180
        0x1195 -> :sswitch_181
        0x11f8 -> :sswitch_182
        0x11f9 -> :sswitch_183
        0x125c -> :sswitch_184
        0x125d -> :sswitch_185
        0x12c0 -> :sswitch_186
        0x12c1 -> :sswitch_187
        0x1388 -> :sswitch_188
        0x1389 -> :sswitch_189
        0x138a -> :sswitch_18a
        0x1450 -> :sswitch_18b
        0x1451 -> :sswitch_18c
        0x1452 -> :sswitch_18d
        0x14b4 -> :sswitch_18e
        0x14b5 -> :sswitch_18f
        0x14b6 -> :sswitch_190
        0x1518 -> :sswitch_191
        0x1519 -> :sswitch_192
        0x157c -> :sswitch_193
        0x157d -> :sswitch_194
        0x157e -> :sswitch_195
        0x15e0 -> :sswitch_196
        0x15e1 -> :sswitch_197
        0x16a8 -> :sswitch_19d
        0x16a9 -> :sswitch_19e
        0x170c -> :sswitch_19f
        0x170d -> :sswitch_1a0
        0x170e -> :sswitch_1a1
        0x170f -> :sswitch_1a2
        0x1710 -> :sswitch_1a3
        0x1770 -> :sswitch_1a4
        0x1771 -> :sswitch_1a5
        0x1772 -> :sswitch_1a6
        0x1773 -> :sswitch_1a7
        0x1774 -> :sswitch_1a8
        0x1775 -> :sswitch_1a9
        0x17d4 -> :sswitch_1aa
        0x17d5 -> :sswitch_1ab
        0x17d6 -> :sswitch_1ac
        0x17d7 -> :sswitch_1ad
        0x1838 -> :sswitch_1ae
        0x1839 -> :sswitch_1af
        0x189c -> :sswitch_1b0
        0x189d -> :sswitch_1b1
        0x1901 -> :sswitch_198
        0x1902 -> :sswitch_199
        0x1903 -> :sswitch_19a
        0x1904 -> :sswitch_19b
        0x1905 -> :sswitch_19c
        0x1964 -> :sswitch_1b2
        0x1965 -> :sswitch_1b3
        0x1966 -> :sswitch_1b4
        0x1967 -> :sswitch_1b5
        0x19c8 -> :sswitch_1b6
        0x19c9 -> :sswitch_1b7
        0x1b59 -> :sswitch_1b8
        0x1f40 -> :sswitch_1b9
        0x2328 -> :sswitch_1ba
        0x2329 -> :sswitch_1bb
        0x232a -> :sswitch_1bc
        0x232b -> :sswitch_1bd
        0x232c -> :sswitch_1be
        0x232d -> :sswitch_1bf
    .end sparse-switch
.end method
