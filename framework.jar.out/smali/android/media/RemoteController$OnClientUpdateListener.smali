.class public interface abstract Landroid/media/RemoteController$OnClientUpdateListener;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClientUpdateListener"
.end annotation


# virtual methods
.method public abstract onClientChange(Z)V
.end method

.method public abstract onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
.end method

.method public abstract onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
.end method

.method public abstract onClientNowPlayingContentChange()V
.end method

.method public abstract onClientPlayItemResponse(Z)V
.end method

.method public abstract onClientPlaybackStateUpdate(I)V
.end method

.method public abstract onClientPlaybackStateUpdate(IJJF)V
.end method

.method public abstract onClientSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onClientTransportControlUpdate(I)V
.end method

.method public abstract onClientUpdateNowPlayingEntries([J)V
.end method
