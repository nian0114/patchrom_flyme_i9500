.class public Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "CaeProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContext.CaeProvider"


# instance fields
.field private final mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mContext:Landroid/content/Context;

.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mServiceNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;-><init>(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    const-string v1, "context_aware"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/ContextAwareManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iput p2, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    iput-object p3, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method


# virtual methods
.method public add()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method getManager()Lcom/samsung/android/contextaware/ContextAwareManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    .prologue
    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .prologue
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    return-object p1
.end method

.method public remove()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public requestToUpdate()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 12
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/16 v10, 0x3b

    invoke-virtual {p2, p1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    const-string v6, "SContext.CaeProvider"

    const-string v7, "setProperty() : attribute is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    const/4 v8, 0x7

    const-string v9, "step_count"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    const/16 v8, 0x8

    const-string v9, "device_type"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    :pswitch_3
    const-string v6, "sensor_type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "sensorType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    const/16 v8, 0xd

    const-string v9, "update_interval"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    .end local v5    # "sensorType":I
    :pswitch_4
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v8, 0x35

    const-string v9, "voice_mode"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    :pswitch_5
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0x9

    const-string v9, "nomove_duration_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0xa

    const-string v9, "move_duration_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0xb

    const-string v9, "move_min_duration_trhs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v8, 0xc

    const-string v9, "move_distance_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v8, 0xe

    const-string v9, "strength"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v8, 0xf

    const-string v9, "duration"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :pswitch_7
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v8, 0x14

    const-string v9, "low_temperature"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v8, 0x15

    const-string v9, "high_temperature"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v8, 0x16

    const-string v9, "including"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IIZ)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x21

    const-string v9, "retention_time"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x22

    const-string v9, "minimum_angle"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x23

    const-string v9, "maximum_angle"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v8, 0x24

    const-string v9, "moving_thrs"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v8, 0x2a

    const-string v9, "sensibility"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v8, 0x2b

    const-string v9, "sampling_interval"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :pswitch_a
    const-string v6, "activity_filter"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .local v2, "ex_actions":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x26

    aget v9, v2, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "duration"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "ex_duration":I
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x27

    invoke-virtual {v6, v7, v8, v3}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .end local v2    # "ex_actions":[I
    .end local v3    # "ex_duration":I
    .end local v4    # "i":I
    :pswitch_b
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    const-string v8, "duration"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v10, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :pswitch_c
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x39

    const-string v9, "device_type"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const-string v8, "duration"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v10, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x3c

    const-string v9, "alert_count"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x37

    const-string v9, "start_time"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v8, 0x38

    const-string v9, "end_time"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :pswitch_d
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    const/16 v8, 0x3d

    const-string v9, "duration"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :pswitch_e
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    const/16 v8, 0x40

    const-string v9, "device_mode"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    const-string v6, "SContext.CaeProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAttribute() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "device_mode"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_f
    const-string v6, "required_data_type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "data_type":I
    iget-object v6, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    const/16 v8, 0x3f

    invoke-virtual {v6, v7, v8, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    return v0
.end method
