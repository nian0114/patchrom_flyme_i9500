.class public final Lcom/ck/services/application/MAIN$CONSTANT;
.super Ljava/lang/Object;
.source "MAIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/application/MAIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CONSTANT"
.end annotation


# static fields
.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_GIGA:J = 0x40000000L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_KILO:J = 0x400L

.field public static final ONE_MEGA:J = 0x100000L

.field public static final ONE_MIN:J = 0xea60L

.field public static final ONE_SEC:J = 0x3e8L

.field public static final ONE_TERA:J = 0x10000000000L


# instance fields
.field final synthetic this$0:Lcom/ck/services/application/MAIN;


# direct methods
.method public constructor <init>(Lcom/ck/services/application/MAIN;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ck/services/application/MAIN$CONSTANT;->this$0:Lcom/ck/services/application/MAIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
