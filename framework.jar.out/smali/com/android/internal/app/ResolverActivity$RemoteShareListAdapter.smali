.class final Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mRemoteShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mInitialIntents:[Landroid/content/Intent;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040481

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    .prologue
    const v3, 0x1020490

    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    .end local v0    # "icon":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "icon":Landroid/widget/ImageView;
    const v2, 0x1080b22

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090133

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;)V

    return-object v0

    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method
