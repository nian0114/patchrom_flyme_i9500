.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x5

.field static final TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x6

.field static final TRANSACTION_disableCdmaBroadcast:I = 0x2d

.field static final TRANSACTION_disableCdmaBroadcastRange:I = 0x2f

.field static final TRANSACTION_disableCellBroadcast:I = 0x11

.field static final TRANSACTION_disableCellBroadcastForSubscriber:I = 0x12

.field static final TRANSACTION_disableCellBroadcastRange:I = 0x15

.field static final TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0x16

.field static final TRANSACTION_enableCdmaBroadcast:I = 0x2c

.field static final TRANSACTION_enableCdmaBroadcastRange:I = 0x2e

.field static final TRANSACTION_enableCellBroadcast:I = 0xf

.field static final TRANSACTION_enableCellBroadcastForSubscriber:I = 0x10

.field static final TRANSACTION_enableCellBroadcastRange:I = 0x13

.field static final TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0x14

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x2

.field static final TRANSACTION_getCbSettings:I = 0x36

.field static final TRANSACTION_getImsSmsFormat:I = 0x1e

.field static final TRANSACTION_getImsSmsFormatForSubscriber:I = 0x1f

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0x1d

.field static final TRANSACTION_getPremiumSmsPermission:I = 0x17

.field static final TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0x18

.field static final TRANSACTION_getSMSAvailable:I = 0x33

.field static final TRANSACTION_getSMSPAvailable:I = 0x34

.field static final TRANSACTION_getSimFullStatus:I = 0x35

.field static final TRANSACTION_getSmsc:I = 0x3b

.field static final TRANSACTION_getToddlerMode:I = 0x3a

.field static final TRANSACTION_injectSmsPdu:I = 0xb

.field static final TRANSACTION_isImsSmsSupported:I = 0x1b

.field static final TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x1c

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x20

.field static final TRANSACTION_resetSimFullStatus:I = 0x37

.field static final TRANSACTION_sendData:I = 0x7

.field static final TRANSACTION_sendDataForSubscriber:I = 0x8

.field static final TRANSACTION_sendDatawithOrigPort:I = 0x24

.field static final TRANSACTION_sendMultipartText:I = 0xd

.field static final TRANSACTION_sendMultipartTextForSubscriber:I = 0xe

.field static final TRANSACTION_sendMultipartTextwithCBP:I = 0x2b

.field static final TRANSACTION_sendMultipartTextwithOptions:I = 0x30

.field static final TRANSACTION_sendOTADomestic:I = 0x2a

.field static final TRANSACTION_sendRawPduSat:I = 0x32

.field static final TRANSACTION_sendStoredMultipartText:I = 0x22

.field static final TRANSACTION_sendStoredText:I = 0x21

.field static final TRANSACTION_sendText:I = 0x9

.field static final TRANSACTION_sendTextForSubscriber:I = 0xa

.field static final TRANSACTION_sendTextKdi:I = 0x26

.field static final TRANSACTION_sendTextNSRI:I = 0x31

.field static final TRANSACTION_sendTextWithPriority:I = 0x25

.field static final TRANSACTION_sendTextwithCBP:I = 0x27

.field static final TRANSACTION_sendTextwithOptions:I = 0x28

.field static final TRANSACTION_sendTextwithOptionsReadconfirm:I = 0x29

.field static final TRANSACTION_sendscptResult:I = 0x38

.field static final TRANSACTION_setCDMASmsReassembly:I = 0x39

.field static final TRANSACTION_setPremiumSmsPermission:I = 0x19

.field static final TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x1a

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x3

.field static final TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x4

.field static final TRANSACTION_updateSmsSendStatus:I = 0xc

.field static final TRANSACTION_updateSmsServiceCenterOnSimEf:I = 0x23

.field static final TRANSACTION_useLte3GPPSms:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/ISms;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 50
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

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v48

    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v48    # "_result":Z
    :sswitch_4
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg4":[B
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_1

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v48    # "_result":Z
    :sswitch_5
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v48    # "_result":Z
    :sswitch_6
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .restart local v10    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .restart local v11    # "_arg4":[B
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_3

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":[B
    .end local v48    # "_result":Z
    :sswitch_7
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .restart local v11    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .local v18, "_arg5":Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .local v19, "_arg6":Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_4
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_6

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .local v14, "_arg7":Landroid/app/PendingIntent;
    :goto_8
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v14    # "_arg7":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_6
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_8

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v14    # "_arg7":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":[B
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_9
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .local v18, "_arg5":Landroid/app/PendingIntent;
    :goto_a
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v18

    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_9

    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_a

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    :goto_c
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_a
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_b

    :cond_b
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_c

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, "_arg2":Landroid/app/PendingIntent;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_d

    .end local v6    # "_arg0":[B
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v8, 0x1

    .local v8, "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->updateSmsSendStatus(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v8    # "_arg1":Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_e

    .end local v6    # "_arg0":I
    :sswitch_d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .local v24, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .local v25, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .local v26, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v33

    .local v33, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v35

    .local v35, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v27, p0

    move-wide/from16 v28, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v34, v26

    invoke-virtual/range {v27 .. v35}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_10
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(JI)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_10

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_12
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(JI)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRange(II)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_12

    const/4 v5, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_14
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(JII)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_13

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v48    # "_result":Z
    :sswitch_15
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRange(II)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_14

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_16
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(JII)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_15

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v48    # "_result":Z
    :sswitch_17
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v48

    .local v48, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":I
    :sswitch_18
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(JLjava/lang/String;)I

    move-result v48

    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":I
    :sswitch_19
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    :sswitch_1a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(JLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_1b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupported()Z

    move-result v48

    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_16

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .end local v48    # "_result":Z
    :sswitch_1c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(J)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_17

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    .end local v6    # "_arg0":J
    .end local v48    # "_result":Z
    :sswitch_1d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()J

    move-result-wide v48

    .local v48, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v48    # "_result":J
    :sswitch_1e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v48

    .local v48, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(J)Ljava/lang/String;

    move-result-object v48

    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":J
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    move-result v48

    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_18

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .end local v48    # "_result":Z
    :sswitch_21
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .local v9, "_arg2":Landroid/net/Uri;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_1c
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_1a

    .restart local v10    # "_arg3":Ljava/lang/String;
    :cond_1a
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1b

    :cond_1b
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_1c

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_22
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .restart local v9    # "_arg2":Landroid/net/Uri;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .restart local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v37, p0

    move-wide/from16 v38, v6

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    invoke-virtual/range {v37 .. v44}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_1c
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_1d

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    :sswitch_23
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->updateSmsServiceCenterOnSimEf([B)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_1d

    const/4 v5, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v5, 0x0

    goto :goto_1e

    .end local v6    # "_arg0":[B
    .end local v48    # "_result":Z
    :sswitch_24
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .restart local v14    # "_arg7":Landroid/app/PendingIntent;
    :goto_20
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move/from16 v40, v10

    move/from16 v41, v11

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v14

    invoke-virtual/range {v36 .. v44}, Lcom/android/internal/telephony/ISms$Stub;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v14    # "_arg7":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_1e
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_1f

    :cond_1f
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_20

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v14    # "_arg7":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":[B
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_25
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, "_arg3":Landroid/app/PendingIntent;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg5":I
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move/from16 v42, v18

    invoke-virtual/range {v36 .. v42}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":I
    :cond_20
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_21

    :cond_21
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_22

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_26
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10    # "_arg3":Landroid/app/PendingIntent;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v18, 0x1

    .local v18, "_arg5":Z
    :goto_25
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move/from16 v42, v18

    invoke-virtual/range {v36 .. v42}, Lcom/android/internal/telephony/ISms$Stub;->sendTextKdi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Z
    :cond_22
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_23

    :cond_23
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_24

    :cond_24
    const/16 v18, 0x0

    goto :goto_25

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_27
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .local v18, "_arg5":Landroid/app/PendingIntent;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg7":I
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    move/from16 v44, v14

    invoke-virtual/range {v36 .. v44}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":I
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Ljava/lang/String;
    :cond_25
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_26

    :cond_26
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_27

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_28
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v19, 0x1

    .local v19, "_arg6":Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .local v45, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, "_arg9":I
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v42, v18

    move/from16 v43, v19

    move/from16 v44, v14

    invoke-virtual/range {v36 .. v46}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":I
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Z
    .end local v45    # "_arg8":I
    .end local v46    # "_arg9":I
    :cond_27
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_28

    :cond_28
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_29

    :cond_29
    const/16 v19, 0x0

    goto :goto_2a

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_29
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v19, 0x1

    .restart local v19    # "_arg6":Z
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .restart local v45    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .restart local v46    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .local v47, "_arg10":I
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v42, v18

    move/from16 v43, v19

    move/from16 v44, v14

    invoke-virtual/range {v36 .. v47}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithOptionsReadconfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":I
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Z
    .end local v45    # "_arg8":I
    .end local v46    # "_arg9":I
    .end local v47    # "_arg10":I
    :cond_2a
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_2b

    :cond_2b
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_2c

    :cond_2c
    const/16 v19, 0x0

    goto :goto_2d

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_2a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    :sswitch_2b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .restart local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .restart local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg7":I
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v27, v19

    move/from16 v28, v14

    invoke-virtual/range {v20 .. v28}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg7":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_2c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->enableCdmaBroadcast(I)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_2d

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v5, 0x0

    goto :goto_2e

    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_2d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->disableCdmaBroadcast(I)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_2e

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2e
    const/4 v5, 0x0

    goto :goto_2f

    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_2e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCdmaBroadcastRange(II)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_2f

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2f
    const/4 v5, 0x0

    goto :goto_30

    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_2f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCdmaBroadcastRange(II)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_30

    const/4 v5, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_30
    const/4 v5, 0x0

    goto :goto_31

    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_30
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .restart local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .restart local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v19, 0x1

    .local v19, "_arg6":Z
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .restart local v45    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .restart local v46    # "_arg9":I
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v27, v19

    move/from16 v28, v14

    move/from16 v29, v45

    move/from16 v30, v46

    invoke-virtual/range {v20 .. v30}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v14    # "_arg7":I
    .end local v19    # "_arg6":Z
    .end local v45    # "_arg8":I
    .end local v46    # "_arg9":I
    :cond_31
    const/16 v19, 0x0

    goto :goto_32

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_31
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg7":I
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v42, v18

    move/from16 v43, v19

    move/from16 v44, v14

    invoke-virtual/range {v36 .. v44}, Lcom/android/internal/telephony/ISms$Stub;->sendTextNSRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":I
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":I
    :cond_32
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_33

    :cond_33
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_34

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_32
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, "_arg3":Landroid/app/PendingIntent;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    :goto_36
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    invoke-virtual/range {v27 .. v32}, Lcom/android/internal/telephony/ISms$Stub;->sendRawPduSat([B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :cond_34
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_35

    :cond_35
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_36

    .end local v6    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_33
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSMSAvailable()Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_36

    const/4 v5, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_36
    const/4 v5, 0x0

    goto :goto_37

    .end local v48    # "_result":Z
    :sswitch_34
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSMSPAvailable()Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_37

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_37
    const/4 v5, 0x0

    goto :goto_38

    .end local v48    # "_result":Z
    :sswitch_35
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSimFullStatus()Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_38

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_38
    const/4 v5, 0x0

    goto :goto_39

    .end local v48    # "_result":Z
    :sswitch_36
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getCbSettings()[B

    move-result-object v48

    .local v48, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v48    # "_result":[B
    :sswitch_37
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->resetSimFullStatus()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_38
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .local v19, "_arg6":Landroid/app/PendingIntent;
    :goto_3b
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move/from16 v38, v8

    move/from16 v39, v9

    move/from16 v40, v10

    move/from16 v41, v11

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    invoke-virtual/range {v36 .. v43}, Lcom/android/internal/telephony/ISms$Stub;->sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_39
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_3a

    :cond_3a
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_3b

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_39
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v6, 0x1

    .local v6, "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->setCDMASmsReassembly(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":Z
    :cond_3b
    const/4 v6, 0x0

    goto :goto_3c

    :sswitch_3a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getToddlerMode()Z

    move-result v48

    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_3c

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3d

    .end local v48    # "_result":Z
    :sswitch_3b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSmsc()Ljava/lang/String;

    move-result-object v48

    .local v48, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->useLte3GPPSms()Z

    move-result v48

    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_3d

    const/4 v5, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3e

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
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
