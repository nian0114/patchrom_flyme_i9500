.class public Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
.super Lcom/sec/chaton/clientapi/exception/ClientAPIException;
.source "NotAvailableClientAPIException.java"


# static fields
.field private static final serialVersionUID:J = -0x787a8827b3c02a07L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
