.class public final Lcom/ck/services/application/MAIN$INTENT;
.super Ljava/lang/Object;
.source "MAIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/application/MAIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "INTENT"
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "com.ck.services.intent.ACTION_NOTIFICATION_CLICKED"

.field public static final ACTION_TIME_TICK_ONEHOUR:Ljava/lang/String; = "com.ck.services.intent.ACTION_ONEHOUR_TICK"

.field public static final ACTION_TIME_TICK_ONEMIN:Ljava/lang/String; = "com.ck.services.intent.ACTION_ONEMIN_TICK"

.field public static final ACTION_TIME_TICK_TENMIN:Ljava/lang/String; = "com.ck.services.intent.ACTION_TENMIN_TICK"

.field public static final ACTIVE_ENG_MODE:Ljava/lang/String; = "com.ck.services.intent.ACTIVE_ENG_MODE"

.field public static final DEACTIVE_ENG_MODE:Ljava/lang/String; = "com.ck.services.intent.DEACTIVE_ENG_MODE"


# instance fields
.field final synthetic this$0:Lcom/ck/services/application/MAIN;


# direct methods
.method public constructor <init>(Lcom/ck/services/application/MAIN;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ck/services/application/MAIN$INTENT;->this$0:Lcom/ck/services/application/MAIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
