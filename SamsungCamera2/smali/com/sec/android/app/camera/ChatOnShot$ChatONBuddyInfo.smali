.class public Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;
.super Ljava/lang/Object;
.source "ChatOnShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ChatOnShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatONBuddyInfo"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/ChatOnShot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ChatOnShot;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "selected"    # Z

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->this$0:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mId:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mName:Ljava/lang/String;

    .line 229
    iput-boolean p4, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mSelected:Z

    .line 230
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mSelected:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mId:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mName:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mSelected:Z

    .line 242
    return-void
.end method
