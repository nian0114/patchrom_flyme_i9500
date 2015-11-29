.class public abstract Lcom/android/internal/telephony/IMms$Stub;
.super Landroid/os/Binder;
.source "IMms.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMms"

.field static final TRANSACTION_addMultimediaMessageDraft:I = 0xd

.field static final TRANSACTION_addTextMessageDraft:I = 0xc

.field static final TRANSACTION_archiveStoredConversation:I = 0xb

.field static final TRANSACTION_deleteStoredConversation:I = 0x9

.field static final TRANSACTION_deleteStoredMessage:I = 0x8

.field static final TRANSACTION_downloadMessage:I = 0x2

.field static final TRANSACTION_getAutoPersisting:I = 0x10

.field static final TRANSACTION_getCarrierConfigValues:I = 0x5

.field static final TRANSACTION_importMultimediaMessage:I = 0x7

.field static final TRANSACTION_importTextMessage:I = 0x6

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendStoredMessage:I = 0xe

.field static final TRANSACTION_setAutoPersisting:I = 0xf

.field static final TRANSACTION_updateMmsDownloadStatus:I = 0x4

.field static final TRANSACTION_updateMmsSendStatus:I = 0x3

.field static final TRANSACTION_updateStoredMessageStatus:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IMms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.IMms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/IMms;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IMms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IMms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
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
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .local v9, "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .local v11, "_arg4":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .local v12, "_arg5":Landroid/app/PendingIntent;
    :goto_3
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/IMms$Stub;->sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto :goto_0

    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_1

    .restart local v10    # "_arg3":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/os/Bundle;
    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_3

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_2
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .local v10, "_arg3":Landroid/net/Uri;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .restart local v11    # "_arg4":Landroid/os/Bundle;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/IMms$Stub;->downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v10    # "_arg3":Landroid/net/Uri;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/net/Uri;
    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/os/Bundle;
    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_6

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Landroid/net/Uri;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_3
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/IMms$Stub;->updateMmsSendStatus(I[BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":I
    :sswitch_4
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->updateMmsDownloadStatus(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_5
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/IMms$Stub;->getCarrierConfigValues(J)Landroid/os/Bundle;

    move-result-object v4

    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v4    # "_result":Landroid/os/Bundle;
    .end local v6    # "_arg0":J
    :sswitch_6
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v12, 0x1

    .local v12, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v21, 0x1

    .local v21, "_arg6":Z
    :goto_9
    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/telephony/IMms$Stub;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v4

    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_9

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_result":Landroid/net/Uri;
    .end local v12    # "_arg5":Z
    .end local v21    # "_arg6":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_8

    .restart local v12    # "_arg5":Z
    :cond_8
    const/16 v21, 0x0

    goto :goto_9

    .restart local v4    # "_result":Landroid/net/Uri;
    .restart local v21    # "_arg6":Z
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Z
    .end local v18    # "_arg4":J
    .end local v21    # "_arg6":Z
    :sswitch_7
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .local v8, "_arg1":Landroid/net/Uri;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .local v26, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v11, 0x1

    .local v11, "_arg4":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v12, 0x1

    .restart local v12    # "_arg5":Z
    :goto_d
    move-object/from16 v22, p0

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v28, v11

    move/from16 v29, v12

    invoke-virtual/range {v22 .. v29}, Lcom/android/internal/telephony/IMms$Stub;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_d

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_result":Landroid/net/Uri;
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":Z
    .end local v12    # "_arg5":Z
    .end local v26    # "_arg3":J
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_b

    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v26    # "_arg3":J
    :cond_b
    const/4 v11, 0x0

    goto :goto_c

    .restart local v11    # "_arg4":Z
    :cond_c
    const/4 v12, 0x0

    goto :goto_d

    .restart local v4    # "_result":Landroid/net/Uri;
    .restart local v12    # "_arg5":Z
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":Z
    .end local v12    # "_arg5":Z
    .end local v26    # "_arg3":J
    :sswitch_8
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .restart local v8    # "_arg1":Landroid/net/Uri;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_result":Z
    .end local v8    # "_arg1":Landroid/net/Uri;
    :cond_e
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_f

    .restart local v4    # "_result":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    :sswitch_9
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .local v30, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_10

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":J
    :sswitch_a
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .restart local v8    # "_arg1":Landroid/net/Uri;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .local v9, "_arg2":Landroid/content/ContentValues;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/IMms$Stub;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_13

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_result":Z
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Landroid/content/ContentValues;
    :cond_11
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_12

    :cond_12
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/ContentValues;
    goto :goto_13

    .restart local v4    # "_result":Z
    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Landroid/content/ContentValues;
    :sswitch_b
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .restart local v30    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/4 v9, 0x1

    .local v9, "_arg2":Z
    :goto_15
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v6, v1, v2, v9}, Lcom/android/internal/telephony/IMms$Stub;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_15

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_result":Z
    .end local v9    # "_arg2":Z
    :cond_14
    const/4 v9, 0x0

    goto :goto_15

    .restart local v4    # "_result":Z
    .restart local v9    # "_arg2":Z
    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Z
    .end local v30    # "_arg1":J
    :sswitch_c
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/IMms$Stub;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_16

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_d
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .local v8, "_arg1":Landroid/net/Uri;
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_18

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_19
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "_result":Landroid/net/Uri;
    .end local v8    # "_arg1":Landroid/net/Uri;
    :cond_17
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_18

    .restart local v4    # "_result":Landroid/net/Uri;
    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    :sswitch_e
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .local v10, "_arg3":Landroid/os/Bundle;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_1c
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/IMms$Stub;->sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Landroid/os/Bundle;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_1a

    :cond_1a
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/os/Bundle;
    goto :goto_1b

    :cond_1b
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1c

    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Landroid/os/Bundle;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_f
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v8, 0x1

    .local v8, "_arg1":Z
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->setAutoPersisting(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v8    # "_arg1":Z
    :cond_1c
    const/4 v8, 0x0

    goto :goto_1d

    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IMms$Stub;->getAutoPersisting()Z

    move-result v4

    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1d

    const/4 v5, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v5, 0x0

    goto :goto_1e

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
