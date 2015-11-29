.class public abstract Landroid/app/epm/IPluginManager$Stub;
.super Landroid/os/Binder;
.source "IPluginManager.java"

# interfaces
.implements Landroid/app/epm/IPluginManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/IPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/epm/IPluginManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.epm.IPluginManager"

.field static final TRANSACTION_changePluginState:I = 0x6

.field static final TRANSACTION_getActiveComponents:I = 0x7

.field static final TRANSACTION_getCategoryList:I = 0x9

.field static final TRANSACTION_getComponentPackageMap:I = 0x3

.field static final TRANSACTION_getLanguagePackList:I = 0x2

.field static final TRANSACTION_getListByCategory:I = 0xa

.field static final TRANSACTION_getPluginDetailsList:I = 0x1

.field static final TRANSACTION_installThemePackage:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_removeThemePackage:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.epm.IPluginManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/epm/IPluginManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/epm/IPluginManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.epm.IPluginManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/epm/IPluginManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/epm/IPluginManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/epm/IPluginManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/epm/IPluginManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->getPluginDetailsList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_2
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->getLanguagePackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .restart local v4    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_3
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/epm/IPluginManager$Stub;->getComponentPackageMap()Ljava/util/Map;

    move-result-object v4

    .restart local v4    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_4
    const-string v7, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/app/epm/IPluginManager$Stub;->installThemePackage(Landroid/net/Uri;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_1

    :cond_1
    move v1, v6

    goto :goto_2

    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_5
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->removeThemePackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v7, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .local v3, "_arg3":Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/epm/IPluginManager$Stub;->changePluginState(Ljava/lang/String;IIZ)Z

    move-result v4

    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Z
    :cond_3
    move v3, v6

    goto :goto_3

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_7
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/epm/IPluginManager$Stub;->getActiveComponents()[Ljava/lang/String;

    move-result-object v4

    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/epm/IPluginManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/epm/IPluginManagerCallback;

    move-result-object v0

    .local v0, "_arg0":Landroid/app/epm/IPluginManagerCallback;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->registerCallback(Landroid/app/epm/IPluginManagerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/app/epm/IPluginManagerCallback;
    :sswitch_9
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/epm/IPluginManager$Stub;->getCategoryList()Ljava/util/List;

    move-result-object v4

    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v4    # "_result":Ljava/util/List;
    :sswitch_a
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->getListByCategory(I)Ljava/util/List;

    move-result-object v4

    .restart local v4    # "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
