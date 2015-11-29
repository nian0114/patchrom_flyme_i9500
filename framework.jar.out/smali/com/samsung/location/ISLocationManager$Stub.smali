.class public abstract Lcom/samsung/location/ISLocationManager$Stub;
.super Landroid/os/Binder;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/ISLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.location.ISLocationManager"

.field static final TRANSACTION_addGeofence:I = 0x5

.field static final TRANSACTION_checkPassiveLocation:I = 0x11

.field static final TRANSACTION_removeCurrentLocation:I = 0x10

.field static final TRANSACTION_removeGeofence:I = 0x8

.field static final TRANSACTION_removeSingleLocation:I = 0xe

.field static final TRANSACTION_reportCellGeofenceDetected:I = 0x18

.field static final TRANSACTION_reportCellGeofenceRequestFail:I = 0x19

.field static final TRANSACTION_reportFlpHardwareLocation:I = 0x1a

.field static final TRANSACTION_reportGpsGeofenceAddStatus:I = 0x14

.field static final TRANSACTION_reportGpsGeofencePauseStatus:I = 0x16

.field static final TRANSACTION_reportGpsGeofenceRemoveStatus:I = 0x15

.field static final TRANSACTION_reportGpsGeofenceResumeStatus:I = 0x17

.field static final TRANSACTION_reportGpsGeofenceStatus:I = 0x13

.field static final TRANSACTION_reportGpsGeofenceTransition:I = 0x12

.field static final TRANSACTION_requestBatchOfLocations:I = 0xb

.field static final TRANSACTION_requestCurrentLocation:I = 0xf

.field static final TRANSACTION_requestSingleLocation:I = 0xd

.field static final TRANSACTION_setFusedLocationHardware:I = 0x1

.field static final TRANSACTION_setGeofenceCellInterface:I = 0x3

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x2

.field static final TRANSACTION_startGeofence:I = 0x6

.field static final TRANSACTION_startLocationBatching:I = 0x9

.field static final TRANSACTION_stopGeofence:I = 0x7

.field static final TRANSACTION_stopLocationBatching:I = 0xa

.field static final TRANSACTION_syncGeofence:I = 0x4

.field static final TRANSACTION_updateBatchingOptions:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.location.ISLocationManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/location/ISLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.location.ISLocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/location/ISLocationManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/location/ISLocationManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/location/ISLocationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/location/ISLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IFusedLocationHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v4

    .local v4, "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->setFusedLocationHardware(Landroid/hardware/location/IFusedLocationHardware;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4    # "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    :sswitch_2
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v4

    .local v4, "_arg0":Landroid/location/IGpsGeofenceHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :sswitch_3
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/location/ISLocationCellInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationCellInterface;

    move-result-object v4

    .local v4, "_arg0":Lcom/samsung/location/ISLocationCellInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->setGeofenceCellInterface(Lcom/samsung/location/ISLocationCellInterface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4    # "_arg0":Lcom/samsung/location/ISLocationCellInterface;
    :sswitch_4
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .local v4, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->syncGeofence([I)I

    move-result v2

    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":[I
    :sswitch_5
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/location/SLocationParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/location/SLocationParameter;

    .local v4, "_arg0":Lcom/samsung/location/SLocationParameter;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->addGeofence(Lcom/samsung/location/SLocationParameter;)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":Lcom/samsung/location/SLocationParameter;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Lcom/samsung/location/SLocationParameter;
    goto :goto_1

    .end local v4    # "_arg0":Lcom/samsung/location/SLocationParameter;
    :sswitch_6
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .local v5, "_arg1":Landroid/app/PendingIntent;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->startGeofence(ILandroid/app/PendingIntent;)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_7
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .restart local v5    # "_arg1":Landroid/app/PendingIntent;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->removeGeofence(I)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_9
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationListener;

    move-result-object v5

    .local v5, "_arg1":Lcom/samsung/location/ISLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Lcom/samsung/location/ISLocationListener;
    :sswitch_a
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->stopLocationBatching(I)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_b
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/location/ISLocationManager$Stub;->requestBatchOfLocations()I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    :sswitch_c
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->updateBatchingOptions(II)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_d
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .local v6, "_arg2":Landroid/app/PendingIntent;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/location/ISLocationManager$Stub;->requestSingleLocation(IILandroid/app/PendingIntent;)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v6    # "_arg2":Landroid/app/PendingIntent;
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_4

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_e
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .local v4, "_arg0":Landroid/app/PendingIntent;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->removeSingleLocation(Landroid/app/PendingIntent;)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_5

    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_f
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/location/ISCurrentLocListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISCurrentLocListener;

    move-result-object v4

    .local v4, "_arg0":Lcom/samsung/location/ISCurrentLocListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->requestCurrentLocation(Lcom/samsung/location/ISCurrentLocListener;)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":Lcom/samsung/location/ISCurrentLocListener;
    :sswitch_10
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->removeCurrentLocation(I)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_11
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/location/ISLocationManager$Stub;->checkPassiveLocation()Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .end local v2    # "_result":Z
    :sswitch_12
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .local v6, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .local v8, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .local v10, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .local v12, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .local v13, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .local v14, "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .local v15, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg10":J
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":D
    .end local v8    # "_arg3":D
    .end local v10    # "_arg4":D
    .end local v12    # "_arg5":F
    .end local v13    # "_arg6":F
    .end local v14    # "_arg7":F
    .end local v15    # "_arg8":J
    .end local v17    # "_arg9":I
    .end local v18    # "_arg10":J
    :sswitch_13
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .restart local v6    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .restart local v8    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .restart local v10    # "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .restart local v12    # "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .restart local v13    # "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .restart local v14    # "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .restart local v15    # "_arg8":J
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v16}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceStatus(IIDDDFFFJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":D
    .end local v8    # "_arg3":D
    .end local v10    # "_arg4":D
    .end local v12    # "_arg5":F
    .end local v13    # "_arg6":F
    .end local v14    # "_arg7":F
    .end local v15    # "_arg8":J
    :sswitch_14
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceAddStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_15
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceRemoveStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_16
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofencePauseStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_17
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceResumeStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_18
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->reportCellGeofenceDetected(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_19
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportCellGeofenceRequestFail(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg0":I
    :sswitch_1a
    const-string v3, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/location/Location;

    .local v4, "_arg0":[Landroid/location/Location;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportFlpHardwareLocation([Landroid/location/Location;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
