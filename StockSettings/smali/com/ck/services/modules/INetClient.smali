.class public interface abstract Lcom/ck/services/modules/INetClient;
.super Ljava/lang/Object;
.source "INetClient.java"

# interfaces
.implements Lcom/ck/services/statistics/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ck/services/modules/INetClient$DownloadRequest;,
        Lcom/ck/services/modules/INetClient$NET_TYPE;,
        Lcom/ck/services/modules/INetClient$Server;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_ERROR_FAILED:I = 0x7

.field public static final DOWNLOAD_ERROR_FATAL_ERROR:I = 0x6

.field public static final DOWNLOAD_ERROR_FOLDER_NOT_EXIST:I = 0x5

.field public static final DOWNLOAD_ERROR_ILLEGAL_FILENAME:I = 0x3

.field public static final DOWNLOAD_ERROR_INVALID_URL:I = 0x1

.field public static final DOWNLOAD_ERROR_NONE:I = 0x0

.field public static final DOWNLOAD_ERROR_NOT_ENOUGH_SPACE:I = 0x2

.field public static final DOWNLOAD_ERROR_SIZE_ERROR:I = 0x4


# virtual methods
.method public abstract downloadObject(Lcom/ck/services/modules/INetClient$DownloadRequest;Lcom/ck/services/statistics/ITaskListener;)V
.end method

.method public abstract getCurrentNetType()Lcom/ck/services/modules/INetClient$NET_TYPE;
.end method

.method public abstract getCurrentNetTypeName()Ljava/lang/String;
.end method

.method public abstract getCurrentTraffic()J
.end method

.method public abstract isNetActivated()Z
.end method

.method public abstract postDataToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract pullDataFromServer(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract tcpRequest(Lcom/ck/services/modules/INetClient$Server;Ljava/lang/String;)Ljava/lang/String;
.end method
