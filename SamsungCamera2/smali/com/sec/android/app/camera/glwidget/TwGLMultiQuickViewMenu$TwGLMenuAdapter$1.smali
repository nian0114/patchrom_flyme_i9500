.class Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;
.super Ljava/lang/Object;
.source "TwGLMultiQuickViewMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

.field final synthetic val$image:Lcom/sec/android/app/camera/gallery/IImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->val$image:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 230
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->val$image:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->hidingMenu()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->refreshMenu()V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->showingMenu()V

    .line 245
    :cond_1
    :goto_0
    return v2

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method
