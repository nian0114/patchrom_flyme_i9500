.class public Lcom/sec/android/app/camera/command/HelpsettingsCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "HelpsettingsCommand.java"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/sec/android/app/camera/command/HelpsettingsCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 82
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/command/HelpsettingsCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onShowHelpHub()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
