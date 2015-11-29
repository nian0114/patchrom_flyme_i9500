.class Lcom/android/server/epm/overlay/ThemeManagerService$4$1;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/overlay/ThemeManagerService$4;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService$4;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4$1;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    return-void
.end method
