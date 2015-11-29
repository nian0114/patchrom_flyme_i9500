.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 119
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
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .local v7, "finished":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .local v8, "userLeaving":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_3
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "finished":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .restart local v8    # "userLeaving":Z
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :sswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v114, 0x1

    .local v114, "show":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v9    # "configChanges":I
    .end local v114    # "show":Z
    :cond_3
    const/16 v114, 0x0

    goto :goto_4

    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v114, 0x1

    .restart local v114    # "show":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v114    # "show":Z
    :cond_4
    const/16 v114, 0x0

    goto :goto_5

    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v115, 0x1

    .local v115, "sleeping":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v115    # "sleeping":Z
    :cond_5
    const/16 v115, 0x0

    goto :goto_6

    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v25, 0x1

    .local v25, "isForward":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v111

    .local v111, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v25

    move-object/from16 v3, v111

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v25    # "isForward":Z
    .end local v111    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v25, 0x0

    goto :goto_7

    .end local v6    # "b":Landroid/os/IBinder;
    .end local v19    # "procState":I
    :sswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .local v22, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "b":Landroid/os/IBinder;
    .end local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :sswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .local v16, "curConfig":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .local v17, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v18

    .local v18, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v20

    .local v20, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v21

    .local v21, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .restart local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .local v23, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v24, 0x1

    .local v24, "notResumed":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v25, 0x1

    .restart local v25    # "isForward":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v26, v5

    .local v26, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_a
    const/16 v27, 0x0

    .local v27, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    check-cast v27, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .restart local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v11, p0

    move-object v13, v6

    invoke-virtual/range {v11 .. v27}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v24    # "notResumed":Z
    .end local v25    # "isForward":Z
    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_7
    const/16 v24, 0x0

    goto :goto_8

    .restart local v24    # "notResumed":Z
    :cond_8
    const/16 v25, 0x0

    goto :goto_9

    .restart local v25    # "isForward":Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_a

    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v18    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v19    # "procState":I
    .end local v20    # "state":Landroid/os/Bundle;
    .end local v21    # "persistentState":Landroid/os/PersistableBundle;
    .end local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v24    # "notResumed":Z
    .end local v25    # "isForward":Z
    :sswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .restart local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .restart local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v24, 0x1

    .restart local v24    # "notResumed":Z
    :goto_b
    const/16 v34, 0x0

    .local v34, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "config":Landroid/content/res/Configuration;
    check-cast v34, Landroid/content/res/Configuration;

    .restart local v34    # "config":Landroid/content/res/Configuration;
    :cond_a
    const/16 v27, 0x0

    .restart local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    check-cast v27, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .restart local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v22

    move-object/from16 v31, v23

    move/from16 v32, v9

    move/from16 v33, v24

    move-object/from16 v35, v27

    invoke-virtual/range {v28 .. v35}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v24    # "notResumed":Z
    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v34    # "config":Landroid/content/res/Configuration;
    :cond_b
    const/16 v24, 0x0

    goto :goto_b

    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v22    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :sswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .restart local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "b":Landroid/os/IBinder;
    .end local v23    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :sswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v93, 0x1

    .local v93, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9    # "configChanges":I
    .end local v93    # "finishing":Z
    :cond_c
    const/16 v93, 0x0

    goto :goto_c

    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .local v103, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .local v96, "isDisable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updateOverlayPath(Ljava/lang/String;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v96    # "isDisable":I
    .end local v103    # "path":Ljava/lang/String;
    :sswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .local v40, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v41

    .local v41, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v42, 0x1

    .local v42, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .local v43, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .local v44, "processState":I
    move-object/from16 v35, p0

    move-object/from16 v36, v12

    move-object/from16 v37, v15

    move-object/from16 v38, v17

    invoke-virtual/range {v35 .. v44}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v42    # "sync":Z
    .end local v43    # "sendingUser":I
    .end local v44    # "processState":I
    :cond_d
    const/16 v42, 0x0

    goto :goto_d

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v39    # "resultCode":I
    .end local v40    # "resultData":Ljava/lang/String;
    .end local v41    # "resultExtras":Landroid/os/Bundle;
    :sswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .local v29, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ServiceInfo;

    .local v15, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .restart local v44    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move/from16 v3, v44

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v29    # "token":Landroid/os/IBinder;
    .end local v44    # "processState":I
    :sswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v108, 0x1

    .local v108, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .restart local v44    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v108

    move/from16 v3, v44

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v44    # "processState":I
    .end local v108    # "rebind":Z
    :cond_e
    const/16 v108, 0x0

    goto :goto_e

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v30, 0x1

    .local v30, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .local v31, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .local v32, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Intent;

    .local v33, "args":Landroid/content/Intent;
    :goto_10
    move-object/from16 v28, p0

    invoke-virtual/range {v28 .. v33}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v30    # "taskRemoved":Z
    .end local v31    # "startId":I
    .end local v32    # "fl":I
    .end local v33    # "args":Landroid/content/Intent;
    :cond_f
    const/16 v30, 0x0

    goto :goto_f

    .restart local v30    # "taskRemoved":Z
    .restart local v31    # "startId":I
    .restart local v32    # "fl":I
    :cond_10
    const/16 v33, 0x0

    .restart local v33    # "args":Landroid/content/Intent;
    goto :goto_10

    .end local v29    # "token":Landroid/os/IBinder;
    .end local v30    # "taskRemoved":Z
    .end local v31    # "startId":I
    .end local v32    # "fl":I
    .end local v33    # "args":Landroid/content/Intent;
    :sswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .local v46, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v48

    .local v48, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    new-instance v49, Landroid/content/ComponentName;

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .local v49, "testName":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v26, v5

    .restart local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v51

    .local v51, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    .local v88, "binder":Landroid/os/IBinder;
    invoke-static/range {v88 .. v88}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v52

    .local v52, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    invoke-static/range {v88 .. v88}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v53

    .local v53, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v54

    .local v54, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v55, 0x1

    .local v55, "openGlTrace":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v56, 0x1

    .local v56, "restrictedBackupMode":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v57, 0x1

    .local v57, "persistent":Z
    :goto_15
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/res/Configuration;

    .restart local v34    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v60

    .local v60, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v61

    .local v61, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v45, p0

    move-object/from16 v47, v15

    move-object/from16 v50, v26

    move-object/from16 v58, v34

    move-object/from16 v59, v17

    invoke-virtual/range {v45 .. v61}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v34    # "config":Landroid/content/res/Configuration;
    .end local v49    # "testName":Landroid/content/ComponentName;
    .end local v51    # "testArgs":Landroid/os/Bundle;
    .end local v52    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v53    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v54    # "testMode":I
    .end local v55    # "openGlTrace":Z
    .end local v56    # "restrictedBackupMode":Z
    .end local v57    # "persistent":Z
    .end local v60    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v61    # "coreSettings":Landroid/os/Bundle;
    .end local v88    # "binder":Landroid/os/IBinder;
    :cond_11
    const/16 v49, 0x0

    goto :goto_11

    .restart local v49    # "testName":Landroid/content/ComponentName;
    :cond_12
    const/16 v26, 0x0

    goto :goto_12

    .restart local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v51    # "testArgs":Landroid/os/Bundle;
    .restart local v52    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v53    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v54    # "testMode":I
    .restart local v88    # "binder":Landroid/os/IBinder;
    :cond_13
    const/16 v55, 0x0

    goto :goto_13

    .restart local v55    # "openGlTrace":Z
    :cond_14
    const/16 v56, 0x0

    goto :goto_14

    .restart local v56    # "restrictedBackupMode":Z
    :cond_15
    const/16 v57, 0x0

    goto :goto_15

    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v46    # "packageName":Ljava/lang/String;
    .end local v48    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v49    # "testName":Landroid/content/ComponentName;
    .end local v51    # "testArgs":Landroid/os/Bundle;
    .end local v52    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v53    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v54    # "testMode":I
    .end local v55    # "openGlTrace":Z
    .end local v56    # "restrictedBackupMode":Z
    .end local v88    # "binder":Landroid/os/IBinder;
    :sswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/res/Configuration;

    .restart local v34    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v34    # "config":Landroid/content/res/Configuration;
    :sswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    .local v63, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v64

    .local v64, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .local v67, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/net/Uri;

    .local v68, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    move-object/from16 v3, v67

    move-object/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v63    # "proxy":Ljava/lang/String;
    .end local v64    # "port":Ljava/lang/String;
    .end local v67    # "exclList":Ljava/lang/String;
    .end local v68    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    .restart local v63    # "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v64

    .restart local v64    # "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .local v65, "username":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v66

    .local v66, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .restart local v67    # "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/net/Uri;

    .restart local v68    # "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v62, p0

    invoke-virtual/range {v62 .. v68}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v63    # "proxy":Ljava/lang/String;
    .end local v64    # "port":Ljava/lang/String;
    .end local v65    # "username":Ljava/lang/String;
    .end local v66    # "password":Ljava/lang/String;
    .end local v67    # "exclList":Ljava/lang/String;
    .end local v68    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .local v92, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v112

    .local v112, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .local v33, "args":[Ljava/lang/String;
    if-eqz v92, :cond_16

    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_16
    :goto_16
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "service":Landroid/os/IBinder;
    :sswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v112

    .restart local v112    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_17

    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    :try_start_1
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_17
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "service":Landroid/os/IBinder;
    :sswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v70

    .local v70, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .restart local v39    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .local v73, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v74

    .local v74, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    const/16 v75, 0x1

    .local v75, "ordered":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v76, 0x1

    .local v76, "sticky":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .restart local v43    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .restart local v44    # "processState":I
    move-object/from16 v69, p0

    move-object/from16 v71, v12

    move/from16 v72, v39

    move/from16 v77, v43

    move/from16 v78, v44

    invoke-virtual/range {v69 .. v78}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v43    # "sendingUser":I
    .end local v44    # "processState":I
    .end local v75    # "ordered":Z
    .end local v76    # "sticky":Z
    :cond_18
    const/16 v75, 0x0

    goto :goto_18

    .restart local v75    # "ordered":Z
    :cond_19
    const/16 v76, 0x0

    goto :goto_19

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v39    # "resultCode":I
    .end local v70    # "receiver":Landroid/content/IIntentReceiver;
    .end local v73    # "dataStr":Ljava/lang/String;
    .end local v74    # "extras":Landroid/os/Bundle;
    .end local v75    # "ordered":Z
    :sswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .local v85, "activityToken":Landroid/os/IBinder;
    new-instance v117, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v117

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Landroid/os/Parcel;)V

    .local v117, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .local v100, "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v117

    move/from16 v3, v100

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v85    # "activityToken":Landroid/os/IBinder;
    .end local v100    # "notifyReason":I
    .end local v117    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v116, 0x1

    .local v116, "start":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .local v106, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v26, v5

    .restart local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v116

    move-object/from16 v2, v26

    move/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v26    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v106    # "profileType":I
    .end local v116    # "start":Z
    :cond_1a
    const/16 v116, 0x0

    goto :goto_1a

    .restart local v106    # "profileType":I
    .restart local v116    # "start":Z
    :cond_1b
    const/16 v26, 0x0

    goto :goto_1b

    .end local v106    # "profileType":I
    .end local v116    # "start":Z
    :sswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .local v94, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v94    # "group":I
    :sswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/ApplicationInfo;

    .local v86, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .local v87, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v17

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v87    # "backupMode":I
    :sswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/ApplicationInfo;

    .restart local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/CompatibilityInfo;

    .restart local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v17    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v86    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :sswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .local v89, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v102

    .local v102, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v89

    move-object/from16 v2, v102

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v89    # "cmd":I
    .end local v102    # "packages":[Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v99

    .local v99, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v99    # "msg":Ljava/lang/String;
    :sswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v98, 0x1

    .local v98, "managed":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .restart local v103    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v92, v5

    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v98

    move-object/from16 v2, v103

    move-object/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v98    # "managed":Z
    .end local v103    # "path":Ljava/lang/String;
    :cond_1c
    const/16 v98, 0x0

    goto :goto_1c

    .restart local v98    # "managed":Z
    .restart local v103    # "path":Ljava/lang/String;
    :cond_1d
    const/16 v92, 0x0

    goto :goto_1d

    .end local v98    # "managed":Z
    .end local v103    # "path":Ljava/lang/String;
    :sswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .local v84, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .local v105, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_1e

    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v105

    move-object/from16 v3, v33

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_2
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1e
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v33    # "args":[Ljava/lang/String;
    .end local v84    # "activity":Landroid/os/IBinder;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v105    # "prefix":Ljava/lang/String;
    :sswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v113

    .local v113, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v113    # "settings":Landroid/os/Bundle;
    :sswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v104

    .local v104, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/res/CompatibilityInfo;

    .local v90, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v90    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v104    # "pkg":Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .local v97, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v97    # "level":I
    :sswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/Debug$MemoryInfo;

    .local v79, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    const/16 v80, 0x1

    .local v80, "checkin":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/16 v81, 0x1

    .local v81, "dumpInfo":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v82, 0x1

    .local v82, "dumpDalvik":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_1f

    :try_start_3
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v78

    move-object/from16 v77, p0

    move-object/from16 v83, v33

    invoke-virtual/range {v77 .. v83}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1f
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v33    # "args":[Ljava/lang/String;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    :cond_20
    const/16 v80, 0x0

    goto :goto_1f

    .restart local v80    # "checkin":Z
    :cond_21
    const/16 v81, 0x0

    goto :goto_20

    .restart local v81    # "dumpInfo":Z
    :cond_22
    const/16 v82, 0x0

    goto :goto_21

    .restart local v33    # "args":[Ljava/lang/String;
    .restart local v82    # "dumpDalvik":Z
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_23
    throw v5

    .end local v33    # "args":[Ljava/lang/String;
    .end local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_23

    :try_start_6
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_23
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_25
    throw v5

    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v92

    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "args":[Ljava/lang/String;
    if-eqz v92, :cond_24

    :try_start_9
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_24
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    :try_start_b
    invoke-virtual/range {v92 .. v92}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :goto_27
    throw v5

    .end local v33    # "args":[Ljava/lang/String;
    .end local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v107

    .local v107, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v107    # "provider":Landroid/os/IBinder;
    :sswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .restart local v85    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v109

    .local v109, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v110

    .local v110, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v109

    move/from16 v3, v110

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v85    # "activityToken":Landroid/os/IBinder;
    .end local v109    # "requestToken":Landroid/os/IBinder;
    .end local v110    # "requestType":I
    :sswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_25

    const/16 v118, 0x1

    .local v118, "timeout":Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v118

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v118    # "timeout":Z
    :cond_25
    const/16 v118, 0x0

    goto :goto_28

    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    new-instance v101, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .local v101, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v29    # "token":Landroid/os/IBinder;
    .end local v101    # "options":Landroid/app/ActivityOptions;
    :sswitch_32
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v20    # "state":I
    :sswitch_33
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/content/pm/ProviderInfo;

    .local v107, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v107    # "provider":Landroid/content/pm/ProviderInfo;
    :sswitch_34
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .restart local v85    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v99

    .restart local v99    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v99

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResetTargetHeapUtilization(Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v85    # "activityToken":Landroid/os/IBinder;
    .end local v99    # "msg":Ljava/lang/String;
    :sswitch_35
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v95

    .local v95, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v95

    if-ne v0, v5, :cond_26

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_26
    const/4 v5, 0x0

    goto :goto_29

    .end local v95    # "is24Hour":B
    :sswitch_36
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_37
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_27

    const/16 v91, 0x1

    .local v91, "enabled":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v91    # "enabled":Z
    :cond_27
    const/16 v91, 0x0

    goto :goto_2a

    .end local v29    # "token":Landroid/os/IBinder;
    :sswitch_38
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v29    # "token":Landroid/os/IBinder;
    .restart local v33    # "args":[Ljava/lang/String;
    .restart local v92    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v112    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_16

    :catch_1
    move-exception v5

    goto/16 :goto_17

    .end local v112    # "service":Landroid/os/IBinder;
    .restart local v84    # "activity":Landroid/os/IBinder;
    .restart local v105    # "prefix":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1e

    .end local v84    # "activity":Landroid/os/IBinder;
    .end local v105    # "prefix":Ljava/lang/String;
    .restart local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v80    # "checkin":Z
    .restart local v81    # "dumpInfo":Z
    .restart local v82    # "dumpDalvik":Z
    :catch_3
    move-exception v5

    goto/16 :goto_22

    :catch_4
    move-exception v11

    goto/16 :goto_23

    .end local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    :catch_5
    move-exception v5

    goto/16 :goto_24

    :catch_6
    move-exception v11

    goto/16 :goto_25

    :catch_7
    move-exception v5

    goto/16 :goto_26

    :catch_8
    move-exception v11

    goto/16 :goto_27

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_10
        0xd -> :sswitch_11
        0xe -> :sswitch_12
        0x10 -> :sswitch_14
        0x11 -> :sswitch_f
        0x12 -> :sswitch_15
        0x13 -> :sswitch_19
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_1a
        0x17 -> :sswitch_1c
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_7
        0x1b -> :sswitch_3
        0x1c -> :sswitch_20
        0x1d -> :sswitch_21
        0x1e -> :sswitch_22
        0x1f -> :sswitch_23
        0x20 -> :sswitch_31
        0x21 -> :sswitch_13
        0x22 -> :sswitch_24
        0x23 -> :sswitch_25
        0x24 -> :sswitch_26
        0x25 -> :sswitch_27
        0x26 -> :sswitch_16
        0x27 -> :sswitch_17
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_1b
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_35
        0x35 -> :sswitch_36
        0x36 -> :sswitch_37
        0x37 -> :sswitch_38
        0x3e9 -> :sswitch_1f
        0x3eb -> :sswitch_34
        0x5dd -> :sswitch_18
        0x7d1 -> :sswitch_a
    .end sparse-switch
.end method
