.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x6

.field static final TRANSACTION_dismissAndShowAgainInputMethodPicker:I = 0x26

.field static final TRANSACTION_finishInput:I = 0x9

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x18

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x3

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x1f

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x4

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x5

.field static final TRANSACTION_getWACOMPen:I = 0x24

.field static final TRANSACTION_hideMySoftInput:I = 0x12

.field static final TRANSACTION_hideSoftInput:I = 0xb

.field static final TRANSACTION_isAccessoryKeyboard:I = 0x22

.field static final TRANSACTION_isCurrentInputMethodAsSamsungKeyboard:I = 0x27

.field static final TRANSACTION_isInputMethodShown:I = 0x25

.field static final TRANSACTION_minimizeSoftInput:I = 0xc

.field static final TRANSACTION_notifySuggestionPicked:I = 0x17

.field static final TRANSACTION_notifyUserAction:I = 0x20

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x16

.field static final TRANSACTION_removeClient:I = 0x7

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1e

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x19

.field static final TRANSACTION_setImeWindowStatus:I = 0x15

.field static final TRANSACTION_setInputMethod:I = 0x10

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0x11

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1d

.field static final TRANSACTION_setScreenBrightness:I = 0x21

.field static final TRANSACTION_setWACOMPen:I = 0x23

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1c

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xf

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xe

.field static final TRANSACTION_showMySoftInput:I = 0x13

.field static final TRANSACTION_showSoftInput:I = 0xa

.field static final TRANSACTION_startInput:I = 0x8

.field static final TRANSACTION_switchToLastInputMethod:I = 0x1a

.field static final TRANSACTION_switchToNextInputMethod:I = 0x1b

.field static final TRANSACTION_updateStatusIcon:I = 0x14

.field static final TRANSACTION_windowGainedFocus:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 527
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 55
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 63
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 74
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    .line 75
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "_arg1":Z
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 81
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 83
    .local v8, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v8, :cond_1

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 95
    .end local v8    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_5
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v8

    .line 97
    .local v8, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    .end local v8    # "_result":Ljava/util/List;
    :sswitch_6
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 107
    .local v1, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 109
    .local v2, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_7
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 127
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_8
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 140
    .local v3, "_arg2":Landroid/view/inputmethod/EditorInfo;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v8

    .line 142
    .local v8, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v8, :cond_3

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 137
    .end local v3    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "_arg3":I
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    goto :goto_3

    .line 148
    .restart local v4    # "_arg3":I
    .restart local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 154
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v3    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "_arg3":I
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_9
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 163
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_a
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 167
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 175
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v8

    .line 176
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 173
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_5

    .line 177
    .restart local v8    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 182
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :sswitch_b
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 186
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 194
    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    :goto_7
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v8

    .line 195
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 192
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_7

    .line 196
    .restart local v8    # "_result":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 201
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :sswitch_c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 205
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z

    move-result v8

    .line 207
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 213
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_d
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 217
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 219
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 225
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/EditorInfo;

    .line 232
    .local v6, "_arg5":Landroid/view/inputmethod/EditorInfo;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v7

    .local v7, "_arg6":Lcom/android/internal/view/IInputContext;
    move-object v0, p0

    .line 233
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v8

    .line 234
    .local v8, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v8, :cond_a

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 242
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 229
    .end local v6    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    .end local v7    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    goto :goto_a

    .line 240
    .restart local v7    # "_arg6":Lcom/android/internal/view/IInputContext;
    .restart local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 246
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    .end local v7    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_e
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 249
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 255
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_f
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 259
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 266
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 270
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 277
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 281
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 284
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 289
    .local v3, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_c
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 287
    .end local v3    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_c

    .line 295
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_12
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 299
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 306
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 310
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 317
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_14
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 321
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 330
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_15
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 334
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 343
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_16
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    sget-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 346
    .local v1, "_arg0":[Landroid/text/style/SuggestionSpan;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 352
    .end local v1    # "_arg0":[Landroid/text/style/SuggestionSpan;
    :sswitch_17
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    sget-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/SuggestionSpan;

    .line 361
    .local v1, "_arg0":Landroid/text/style/SuggestionSpan;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    move-result v8

    .line 365
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 358
    .end local v1    # "_arg0":Landroid/text/style/SuggestionSpan;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/text/style/SuggestionSpan;
    goto :goto_d

    .line 366
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":I
    .restart local v8    # "_result":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 371
    .end local v1    # "_arg0":Landroid/text/style/SuggestionSpan;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_18
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 373
    .local v8, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v8, :cond_e

    .line 375
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 381
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 379
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 385
    .end local v8    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_19
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 388
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 393
    .local v1, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v8

    .line 394
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 391
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "_result":Z
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_10

    .line 395
    .restart local v8    # "_result":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 400
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "_result":Z
    :sswitch_1a
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 403
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    move-result v8

    .line 404
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 410
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_1b
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 414
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    .line 415
    .local v2, "_arg1":Z
    :goto_13
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v8

    .line 416
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v8, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 417
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 422
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_1c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 425
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v8

    .line 426
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v8, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 427
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 432
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_1d
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    .line 437
    .restart local v2    # "_arg1":Z
    :goto_16
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    move-result v8

    .line 438
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    if-eqz v8, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 436
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 439
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 444
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_1e
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 449
    .local v2, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 455
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_1f
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight()I

    move-result v8

    .line 457
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 463
    .end local v8    # "_result":I
    :sswitch_20
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifyUserAction(I)V

    .line 467
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 471
    .end local v1    # "_arg0":I
    :sswitch_21
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 474
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setScreenBrightness(I)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 480
    .end local v1    # "_arg0":I
    :sswitch_22
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isAccessoryKeyboard()I

    move-result v8

    .line 482
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 488
    .end local v8    # "_result":I
    :sswitch_23
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    .line 491
    .local v1, "_arg0":Z
    :goto_18
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setWACOMPen(Z)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v1    # "_arg0":Z
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 497
    :sswitch_24
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getWACOMPen()Z

    move-result v8

    .line 499
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v8, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 500
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 505
    .end local v8    # "_result":Z
    :sswitch_25
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodShown()Z

    move-result v8

    .line 507
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    if-eqz v8, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 508
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 513
    .end local v8    # "_result":Z
    :sswitch_26
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->dismissAndShowAgainInputMethodPicker()V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 520
    :sswitch_27
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v8

    .line 522
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    if-eqz v8, :cond_1a

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 523
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1b

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
