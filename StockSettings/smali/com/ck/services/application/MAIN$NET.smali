.class public final Lcom/ck/services/application/MAIN$NET;
.super Ljava/lang/Object;
.source "MAIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/application/MAIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NET"
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field public static final UDP_HOST:Ljava/lang/String; = "tj.mogoyun.com"

.field public static final UDP_PORT_MAX:I = 0x19d1

.field public static final UDP_PORT_MIN:I = 0x19c8


# instance fields
.field final synthetic this$0:Lcom/ck/services/application/MAIN;


# direct methods
.method public constructor <init>(Lcom/ck/services/application/MAIN;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ck/services/application/MAIN$NET;->this$0:Lcom/ck/services/application/MAIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
