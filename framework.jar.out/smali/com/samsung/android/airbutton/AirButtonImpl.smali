.class public final Lcom/samsung/android/airbutton/AirButtonImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GLOBAL_APP_EASY_CLIP:I = 0x5

.field public static final GLOBAL_APP_FLASH_ANNO:I = 0x2

.field public static final GLOBAL_APP_PEN_WINDOW:I = 0x4

.field public static final GLOBAL_APP_QUICK_MEMO:I = 0x0

.field public static final GLOBAL_APP_RAKEINSELECT:I = 0x7

.field public static final GLOBAL_APP_SCRAPBOOKER:I = 0x1

.field public static final GLOBAL_APP_S_FINDER:I = 0x3

.field public static final GLOBAL_APP_S_NOTE:I = 0x6

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field public static final UI_TYPE_GLOBAL:I = 0x3

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public getAdapter()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, -0x1

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, -0x1

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public hideHoverPointer()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public initSideButtonState()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public isAirButtonSettingEnabled()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public isBounceEffectEnabled()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public isCoverViewOpened()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public isHoverPointerEnabled()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public isHoverPointerShowing()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public isPenWindowMode()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public isSpenDetachSettingEnabled()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public linkWithParentView()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverButtonSecondary(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    return-void
.end method

.method public onHoverEnter(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    return-void
.end method

.method public onHoverExit(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    return-void
.end method

.method public onHoverMove(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    return-void
.end method

.method public onTouchDownForGA(I)V
    .locals 0
    .param p1, "buttonState"    # I

    .prologue
    .line 164
    return-void
.end method

.method public onTouchUpForGA(I)V
    .locals 0
    .param p1, "buttonState"    # I

    .prologue
    .line 168
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .prologue
    .line 429
    return-void
.end method

.method public setBounceEffectEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 375
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 325
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 283
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 313
    return-void
.end method

.method public setHoverPointerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 406
    return-void
.end method

.method public setMultiSelectionEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 345
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .prologue
    .line 306
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .prologue
    .line 299
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 421
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 338
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 360
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public show(FF)V
    .locals 0
    .param p1, "hoverX"    # F
    .param p2, "hoverY"    # F

    .prologue
    .line 222
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    return-void
.end method

.method public showHoverPointer()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public unlinkWithParentView()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method
