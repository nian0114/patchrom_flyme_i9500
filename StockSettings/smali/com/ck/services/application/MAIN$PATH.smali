.class public final Lcom/ck/services/application/MAIN$PATH;
.super Ljava/lang/Object;
.source "MAIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/application/MAIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PATH"
.end annotation


# static fields
.field public static final APP_DATA_PATH:Ljava/lang/String; = "/.csount/"

.field public static final LOG_DATA_PATH:Ljava/lang/String; = "/.csount/Log/"

.field public static final LOG_FILE_NAME:Ljava/lang/String; = "log"


# instance fields
.field final synthetic this$0:Lcom/ck/services/application/MAIN;


# direct methods
.method public constructor <init>(Lcom/ck/services/application/MAIN;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ck/services/application/MAIN$PATH;->this$0:Lcom/ck/services/application/MAIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
