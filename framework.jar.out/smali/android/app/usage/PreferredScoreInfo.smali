.class public Landroid/app/usage/PreferredScoreInfo;
.super Ljava/lang/Object;
.source "PreferredScoreInfo.java"


# instance fields
.field public pkgName:Ljava/lang/String;

.field public score:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    .line 28
    iput p2, p0, Landroid/app/usage/PreferredScoreInfo;->score:I

    .line 29
    return-void
.end method
