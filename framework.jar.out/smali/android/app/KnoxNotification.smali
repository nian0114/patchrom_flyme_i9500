.class public Landroid/app/KnoxNotification;
.super Ljava/lang/Object;
.source "KnoxNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/KnoxNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapKey:Ljava/lang/String; = "mapKey"


# instance fields
.field public appLabel:Ljava/lang/String;

.field public labels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public notifId:I

.field public notifIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public notification:Landroid/app/Notification;

.field public pkg:Ljava/lang/String;

.field public sanitized:Z

.field public tag:Ljava/lang/String;

.field public userId:I

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/KnoxNotification$1;

    invoke-direct {v0}, Landroid/app/KnoxNotification$1;-><init>()V

    sput-object v0, Landroid/app/KnoxNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "n"    # Landroid/app/Notification;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "userName"    # Ljava/lang/String;
    .param p8, "sanitized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p9, "labels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/KnoxNotification;->labels:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/KnoxNotification;->notifIds:Ljava/util/List;

    iput-object p3, p0, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    iput-object p4, p0, Landroid/app/KnoxNotification;->pkg:Ljava/lang/String;

    iput p6, p0, Landroid/app/KnoxNotification;->userId:I

    iput-object p7, p0, Landroid/app/KnoxNotification;->userName:Ljava/lang/String;

    iput p1, p0, Landroid/app/KnoxNotification;->notifId:I

    iput-object p5, p0, Landroid/app/KnoxNotification;->appLabel:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/KnoxNotification;->tag:Ljava/lang/String;

    iput-boolean p8, p0, Landroid/app/KnoxNotification;->sanitized:Z

    iput-object p9, p0, Landroid/app/KnoxNotification;->labels:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/app/KnoxNotification;->notifIds:Ljava/util/List;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "n"    # Landroid/app/Notification;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "userName"    # Ljava/lang/String;
    .param p8, "sanitized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p9, "labels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p10, "notifIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/KnoxNotification;->labels:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/KnoxNotification;->notifIds:Ljava/util/List;

    iput-object p3, p0, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    iput-object p4, p0, Landroid/app/KnoxNotification;->pkg:Ljava/lang/String;

    iput p6, p0, Landroid/app/KnoxNotification;->userId:I

    iput-object p7, p0, Landroid/app/KnoxNotification;->userName:Ljava/lang/String;

    iput p1, p0, Landroid/app/KnoxNotification;->notifId:I

    iput-object p5, p0, Landroid/app/KnoxNotification;->appLabel:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/KnoxNotification;->tag:Ljava/lang/String;

    iput-boolean p8, p0, Landroid/app/KnoxNotification;->sanitized:Z

    iput-object p9, p0, Landroid/app/KnoxNotification;->labels:Ljava/util/HashMap;

    iput-object p10, p0, Landroid/app/KnoxNotification;->notifIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/KnoxNotification;->labels:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/KnoxNotification;->notifIds:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/KnoxNotification;->notifId:I

    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/KnoxNotification;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/KnoxNotification;->userName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/KnoxNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/KnoxNotification;->appLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/KnoxNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/KnoxNotification;->sanitized:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "mapKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Landroid/app/KnoxNotification;->labels:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/KnoxNotification;->notifIds:Ljava/util/List;

    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v1, p0, Landroid/app/KnoxNotification;->notifId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/KnoxNotification;->notification:Landroid/app/Notification;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/app/KnoxNotification;->userId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/KnoxNotification;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/KnoxNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/KnoxNotification;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/KnoxNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/KnoxNotification;->sanitized:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "mapKey"

    iget-object v2, p0, Landroid/app/KnoxNotification;->labels:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/KnoxNotification;->notifIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
