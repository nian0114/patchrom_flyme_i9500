.class public interface abstract Lcom/ck/services/statistics/IStatistics;
.super Ljava/lang/Object;
.source "IStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ck/services/statistics/IStatistics$ShellInfo;,
        Lcom/ck/services/statistics/IStatistics$UdpServer;
    }
.end annotation


# static fields
.field public static final INSTANCE_CONFIG:Ljava/lang/String; = "instance_config"

.field public static final INSTANCE_DATABASE:Ljava/lang/String; = "instance_database"

.field public static final INSTANCE_DIALOG:Ljava/lang/String; = "instance_dialog"

.field public static final INSTANCE_NETCLIENT:Ljava/lang/String; = "instance_netclient"

.field public static final INSTANCE_NOTIFIER:Ljava/lang/String; = "instance_notifier"

.field public static final INSTANCE_PACKCORE:Ljava/lang/String; = "instance_packcore"

.field public static final INSTANCE_SHELLCONFIG:Ljava/lang/String; = "instance_preferences"


# virtual methods
.method public abstract getAppletContext()Landroid/content/Context;
.end method

.method public abstract getRegServerIp()Ljava/lang/String;
.end method

.method public abstract getRegServerPort()I
.end method

.method public abstract getShellInfo()Lcom/ck/services/statistics/IStatistics$ShellInfo;
.end method

.method public abstract getShellService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getUdpServer()Lcom/ck/services/statistics/IStatistics$UdpServer;
.end method

.method public abstract sendEmptyMessage(I)V
.end method

.method public abstract sendMessage(Landroid/os/Message;)V
.end method

.method public abstract sendMessageDelayed(Landroid/os/Message;J)V
.end method

.method public abstract setRegServer(Ljava/lang/String;I)V
.end method

.method public abstract setUdpServer(Lcom/ck/services/statistics/IStatistics$UdpServer;)V
.end method

.method public abstract submitTask(Ljava/lang/Runnable;)V
.end method
