.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$1;,
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    return-void
.end method


# virtual methods
.method public handleShowToast(Z)V
    .locals 5
    .param p1, "isLocked"    # Z

    .prologue
    const v3, 0x1040689

    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .local v0, "hasPermanentMenuKey":Z
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const v4, 0x1040919

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .local v1, "isSupportManualScreenPinning":Z
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->setShowForAllUsers()V

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    .end local v1    # "isSupportManualScreenPinning":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    const v3, 0x1040918

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const v4, 0x1040688

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v2    # "text":Ljava/lang/String;
    :cond_5
    const v3, 0x1040687

    goto :goto_2
.end method

.method public show(Z)V
    .locals 6
    .param p1, "starting"    # Z

    .prologue
    const v1, 0x1040690

    .local v1, "showString":I
    if-eqz p1, :cond_0

    const v1, 0x104068f

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, "isSupportManualScreenPinning":Z
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void
.end method

.method public showToast(Z)V
    .locals 4
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
