.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private final MSG_PERFORM_DOUBLE_TAP:I

.field private final MSG_PERFORM_RECENT_LONG_PRESS:I

.field private final MSG_PERFORM_SINGLE_TAP:I

.field private final STATE_DETECTION:I

.field private final STATE_READY:I

.field private TAP_TIMEOUT_WITH_CORRECTION:I

.field private currentKeyCode:I

.field private firstKeyCode:I

.field private isFirstTapDone:Z

.field private mContext:Landroid/content/Context;

.field private mDetectionState:I

.field private final mHandler:Landroid/os/Handler;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->STATE_READY:I

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->STATE_DETECTION:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    const/16 v0, 0xe6

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->TAP_TIMEOUT_WITH_CORRECTION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->MSG_PERFORM_SINGLE_TAP:I

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->MSG_PERFORM_DOUBLE_TAP:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->MSG_PERFORM_RECENT_LONG_PRESS:I

    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performSingleTap()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performDoubleTap()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performRecentKeyTapAndHold()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    return v0
.end method

.method private performDoubleTap()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$2;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    return-void
.end method

.method private performRecentKeyTapAndHold()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$3;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    return-void
.end method

.method private performSingleTap()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    const v1, 0x104070d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    const v1, 0x104070e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    const v1, 0x104070f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->talkbackKeyFeedback(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0xbb -> :sswitch_2
    .end sparse-switch
.end method

.method private talkbackKeyFeedback(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "localHashMap":Ljava/util/HashMap;
    const-string v1, "utteranceId"

    const-string v2, "talkbackKeyFeedback"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    return-void
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    if-ne v1, v4, :cond_1

    iput v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mDetectionState:I

    if-eq v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->TAP_TIMEOUT_WITH_CORRECTION:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->isFirstTapDone:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->currentKeyCode:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->TAP_TIMEOUT_WITH_CORRECTION:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->clear()V

    return-void
.end method
