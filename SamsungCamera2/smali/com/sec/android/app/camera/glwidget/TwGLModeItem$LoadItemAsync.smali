.class Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;
.super Landroid/os/AsyncTask;
.source "TwGLModeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadItemAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;Lcom/sec/android/app/camera/glwidget/TwGLModeItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .param p2, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLModeItem$1;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 277
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getBundleSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 284
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
