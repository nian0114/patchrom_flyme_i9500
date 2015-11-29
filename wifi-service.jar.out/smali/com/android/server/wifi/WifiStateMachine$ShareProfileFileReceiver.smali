.class Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;
.super Ljava/lang/Thread;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareProfileFileReceiver"
.end annotation


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field dis:Ljava/io/DataInputStream;

.field fos:Ljava/io/FileOutputStream;

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/net/Socket;)V
    .locals 0
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 13611
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13612
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->socket:Ljava/net/Socket;

    .line 13613
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 13617
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WifiStateMachine"

    const-string v9, "ShareProfileFileReceiver - File reception starts."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13619
    :cond_0
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    .line 13622
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 13623
    .local v5, "senderID":Ljava/lang/String;
    const-string v3, "ReceivedEncrypted.conf"

    .line 13624
    .local v3, "fName":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ShareProfileFileReceiver - senderID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13627
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/wifi_share_profile/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13628
    .local v2, "f":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    .line 13629
    new-instance v8, Ljava/io/BufferedOutputStream;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    .line 13630
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "WifiStateMachine"

    const-string v9, "ShareProfileFileReceiver - File is created."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13634
    :cond_2
    const/16 v6, 0x1000

    .line 13635
    .local v6, "size":I
    new-array v0, v6, [B

    .line 13636
    .local v0, "data":[B
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 13637
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13649
    .end local v0    # "data":[B
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fName":Ljava/lang/String;
    .end local v4    # "len":I
    .end local v5    # "senderID":Ljava/lang/String;
    .end local v6    # "size":I
    :catch_0
    move-exception v1

    .line 13650
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while receiving file. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13652
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x20137

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 13653
    return-void

    .line 13640
    .restart local v0    # "data":[B
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fName":Ljava/lang/String;
    .restart local v4    # "len":I
    .restart local v5    # "senderID":Ljava/lang/String;
    .restart local v6    # "size":I
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 13641
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 13642
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 13643
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 13645
    const/4 v7, 0x0

    .line 13646
    .local v7, "sourceDevice":Ljava/lang/String;
    const-string v8, "Sender:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 13647
    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v8, v3, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$36500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
