.class public Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;
.super Ljava/lang/Object;
.source "UniversalSwitchScreenAsSwitch.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SwitchControlScreenAsSwitch"


# instance fields
.field private SCREEN_AS_SWITCH_BROADCAST_ACTION:Ljava/lang/String;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mTapTimeout:I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWITCHCONTROL_SCREEN_AS_SWITCH_CLICK_ACTION"

    iput-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->SCREEN_AS_SWITCH_BROADCAST_ACTION:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mTapTimeout:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    return-void
.end method

.method sendBroadCast()V
    .locals 0

    .prologue
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/UniversalSwitchScreenAsSwitch;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
