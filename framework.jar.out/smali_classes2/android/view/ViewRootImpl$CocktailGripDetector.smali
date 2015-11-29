.class final Landroid/view/ViewRootImpl$CocktailGripDetector;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CocktailGripDetector"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/view/ViewRootImpl$CocktailGripDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkGrip(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    const-string v2, "Touch Block : Grip Flag !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
