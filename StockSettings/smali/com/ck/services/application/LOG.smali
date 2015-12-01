.class public Lcom/ck/services/application/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ck/services/application/LOG;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "_tag"    # Ljava/lang/String;
    .param p1, "_content"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v0, Lcom/ck/services/application/LOG;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "_tag"    # Ljava/lang/String;
    .param p1, "_content"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-boolean v0, Lcom/ck/services/application/LOG;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "_tag"    # Ljava/lang/String;
    .param p1, "_content"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-boolean v0, Lcom/ck/services/application/LOG;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "_tag"    # Ljava/lang/String;
    .param p1, "_content"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-boolean v0, Lcom/ck/services/application/LOG;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "_tag"    # Ljava/lang/String;
    .param p1, "_content"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Lcom/ck/services/application/LOG;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static switchEngMode(Z)V
    .locals 0
    .param p0, "mode"    # Z

    .prologue
    .line 9
    sput-boolean p0, Lcom/ck/services/application/LOG;->DEBUG:Z

    .line 10
    return-void
.end method
