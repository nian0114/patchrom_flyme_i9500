.class public final Lcom/ck/services/application/MAIN$CONFIG;
.super Ljava/lang/Object;
.source "MAIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/application/MAIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CONFIG"
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DISCRETE_RUNTIME_CONFIG:Ljava/lang/String; = "burst_config"

.field public static final DYNAMIC_MAIN_CLSNAME:Ljava/lang/String; = "com.ck.services.pack.shell.DynMain"

.field public static final DYNAMIC_PACK_NAME:Ljava/lang/String; = "DynMain.jar"

.field public static final PACEMAKER_FREQ:J = 0xea60L

.field public static final THREAD_POOL_SIZE:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/ck/services/application/MAIN;


# direct methods
.method public constructor <init>(Lcom/ck/services/application/MAIN;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ck/services/application/MAIN$CONFIG;->this$0:Lcom/ck/services/application/MAIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
