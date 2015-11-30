.class public Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;
.super Ljava/lang/Object;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShareShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareTargetInfo"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ShareShot;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "selected"    # Z

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iput-object p2, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    .line 1136
    iput-object p3, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    .line 1137
    iput-boolean p4, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    .line 1138
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    .line 1142
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    .line 1146
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    .line 1150
    return-void
.end method
