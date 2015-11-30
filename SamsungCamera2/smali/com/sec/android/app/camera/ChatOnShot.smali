.class public Lcom/sec/android/app/camera/ChatOnShot;
.super Ljava/lang/Object;
.source "ChatOnShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;
    }
.end annotation


# static fields
.field private static final MAXIMUM_BUDDY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ChatOnShot"


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mChatOnBuddyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mChatOnInstalled:Z

.field public mChatOnLogin:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnLogin:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnInstalled:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 34
    return-void
.end method


# virtual methods
.method public addBuddy(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "selected"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;-><init>(Lcom/sec/android/app/camera/ChatOnShot;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public checkChatOnLogin()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/chaton/clientapi/UtilityAPI;->isChatONActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnLogin:Z
    :try_end_0
    .catch Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnInstalled:Z

    .line 46
    const-string v1, "ChatOnShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChatOnLogin() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnLogin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnInstalled:Z

    goto :goto_0
.end method

.method public clearChatOnBuddyList()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getChatOnBuddyList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChatOnBuddyListCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexByBuddyId(Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    return v0

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedChatONBuddyList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    .line 131
    .local v1, "info":Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v1    # "info":Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;
    :cond_1
    return-object v2
.end method

.method public hasBuddyItem(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x1

    .line 199
    :goto_1
    return v1

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isChatOnInstalled()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnInstalled:Z

    return v0
.end method

.method public isChatOnLogin()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ChatOnShot;->checkChatOnLogin()V

    .line 51
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnLogin:Z

    return v0
.end method

.method public loginChatOn()V
    .locals 5

    .prologue
    .line 59
    iget-object v3, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/Feature;->PACKAGE_NAME_CHATON:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 61
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 64
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public pickChatOnBuddyList()V
    .locals 5

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/sec/chaton/clientapi/GraphAPI;->pickBuddy(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x7de

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v2, "ChatOnShot"

    const-string v3, "Success startActivity for pick chaton buddy"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
    const-string v2, "ChatOnShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotAvailableClientAPIException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetChatOnBuddyList()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setBuddyNameFromChatOn()V
    .locals 6

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 82
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "BUDDY_NAME ASC"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/chaton/clientapi/GraphAPI;->getBuddyList(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    :cond_0
    const-string v2, "buddy_no"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ChatOnShot;->hasBuddyItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "buddy_no"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ChatOnShot;->getIndexByBuddyId(Ljava/lang/String;)I

    move-result v1

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/camera/ChatOnShot;->mChatOnBuddyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    const-string v3, "buddy_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->setName(Ljava/lang/String;)V

    .line 92
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string v2, "ChatOnShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chat on buddy count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    if-eqz v0, :cond_3

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/4 v0, 0x0

    .line 104
    :cond_3
    if-eqz v0, :cond_4

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_4
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v2

    .line 104
    if-eqz v0, :cond_5

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_5
    const/4 v0, 0x0

    .line 107
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_6

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_6
    const/4 v0, 0x0

    throw v2
.end method

.method public startMarketActivityForChatOn()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "marketLaunch":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/Feature;->PACKAGE_NAME_CHATON:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public startimagesend(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 139
    const-string v1, "ChatOnShot"

    const-string v4, "startimagesend : "

    invoke-static {v1, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 141
    .local v2, "requestId":J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ChatOnShot;->getSelectedChatONBuddyList()Ljava/util/ArrayList;

    move-result-object v8

    .line 143
    .local v8, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 144
    :cond_0
    const-string v1, "ChatOnShot"

    const-string v4, "No transfer target."

    invoke-static {v1, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 149
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-object v6, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->image:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/chaton/clientapi/MessageAPI;->sendMultiMediaMessageBG(Landroid/content/Context;J[Ljava/lang/String;Landroid/net/Uri;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Z)V
    :try_end_0
    .catch Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "e":Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0    # "e":Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
    :catch_2
    move-exception v0

    .line 158
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;->printStackTrace()V

    goto :goto_0
.end method

.method public startvideosend(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 163
    const-string v1, "ChatOnShot"

    const-string v4, "startvideosend : "

    invoke-static {v1, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 165
    .local v2, "requestId":J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ChatOnShot;->getSelectedChatONBuddyList()Ljava/util/ArrayList;

    move-result-object v8

    .line 167
    .local v8, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 168
    :cond_0
    const-string v1, "ChatOnShot"

    const-string v4, "No transfer target."

    invoke-static {v1, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 173
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ChatOnShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-object v6, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->video:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/chaton/clientapi/MessageAPI;->sendMultiMediaMessageBG(Landroid/content/Context;J[Ljava/lang/String;Landroid/net/Uri;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Z)V
    :try_end_0
    .catch Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0    # "e":Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0    # "e":Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
    :catch_2
    move-exception v0

    .line 182
    .local v0, "e":Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;->printStackTrace()V

    goto :goto_0
.end method
