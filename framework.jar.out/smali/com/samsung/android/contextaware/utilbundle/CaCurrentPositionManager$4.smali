.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$600(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$700(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    return-void
.end method
