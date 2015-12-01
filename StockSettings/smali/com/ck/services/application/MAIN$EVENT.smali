.class public final Lcom/ck/services/application/MAIN$EVENT;
.super Ljava/lang/Object;
.source "MAIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/application/MAIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EVENT"
.end annotation


# static fields
.field public static final APPLET_INSTALLED:I = 0x9

.field public static final APPLET_REMOVED:I = 0xb

.field public static final APPLET_REPLACED:I = 0xa

.field public static final CHECK_DYNAMIC_PACK:I = 0x28

.field public static final CHECK_DYNAMIC_PACK_SERVER:I = 0x33

.field public static final CLOSE_CLIENT:I = 0x64

.field public static final DIALOG_CANCELLED:I = 0x15

.field public static final DIALOG_CONFIRMED:I = 0x14

.field public static final DOWNLOAD_DYNAMIC_PACK:I = 0x34

.field public static final DYNAMIC_PACK_EVENT_BASE:I = 0x3e8

.field public static final GPRS_CONNECTED:I = 0x5

.field public static final GPRS_LOST:I = 0x7

.field public static final KILL_SERVICE:I = 0x8

.field public static final LOAD_DYNAMIC_PACK:I = 0x35

.field public static final LOAD_DYNAMIC_PACK_FAILED:I = 0x2c

.field public static final LOAD_DYNAMIC_PACK_SUCCESS:I = 0x2b

.field public static final NOTIFICATION_CLICKED:I = 0x1e

.field public static final ONEHOUR_TICK:I = 0x3

.field public static final ONEMIN_TICK:I = 0x1

.field public static final TENMIN_TICK:I = 0x2

.field public static final UDP_COMMAND:I = 0x32

.field public static final WIFI_CONNECTED:I = 0x4

.field public static final WIFI_LOST:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/ck/services/application/MAIN;


# direct methods
.method public constructor <init>(Lcom/ck/services/application/MAIN;)V
    .locals 0

    .prologue
    .line 4
    iput-object p1, p0, Lcom/ck/services/application/MAIN$EVENT;->this$0:Lcom/ck/services/application/MAIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
