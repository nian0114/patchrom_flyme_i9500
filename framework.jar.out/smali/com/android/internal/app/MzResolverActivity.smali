.class public Lcom/android/internal/app/MzResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MzResolverActivity$ResolverComparator;,
        Lcom/android/internal/app/MzResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/MzResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/MzResolverActivity$ViewHolder;,
        Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MzResolverActivity"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field private static mInstanceCount:I

.field private static mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static mInternalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mAlwaysUseOption:Z

.field private mContainer:Landroid/widget/ScrollView;

.field private mGrid:Lcom/meizu/widget/DragGridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mResolvingHome:Z

.field mReturnResult:Z

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/app/MzResolverActivity;->mInstanceCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/MzResolverActivity;->mIntents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MzResolverActivity;->mLastSelected:I

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    new-instance v0, Lcom/android/internal/app/MzResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MzResolverActivity$1;-><init>(Lcom/android/internal/app/MzResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/MzResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/app/MzResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/MzResolverActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MzResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private ensureDraggable(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .local v1, "intentType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "intentAction":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "solveActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/MzResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private isInternalFlymeApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.meizu.filemanager"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;I)V
    .locals 6
    .param p1, "ap"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "paddingtop"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->getSystemAppIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "systemIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MzResolverActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$layout;->mz_resolver_grid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v2, Lcom/flyme/internal/R$id;->mz_resolver_grid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mContainer:Landroid/widget/ScrollView;

    new-instance v1, Lcom/meizu/widget/DragGridView;

    invoke-direct {v1, p0}, Lcom/meizu/widget/DragGridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-direct {p0, p2}, Lcom/android/internal/app/MzResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setDraggable(Z)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MzResolverActivity$2;-><init>(Lcom/android/internal/app/MzResolverActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setOnItemClickListener(Lcom/meizu/widget/DragGridView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MzResolverActivity$3;-><init>(Lcom/android/internal/app/MzResolverActivity;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setOnItemPositionChangeListener(Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {v2}, Lcom/meizu/widget/DragGridView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragGridView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {v4}, Lcom/meizu/widget/DragGridView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/meizu/widget/DragGridView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_item_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setColumnWidth(I)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_item_gap_between_rows:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/DragGridView;->setVerticalSpacing(I)V

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity;->mContainer:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->resizeGrid()V

    goto/16 :goto_0
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v3}, Lcom/android/internal/app/MzResolverActivity;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    return-object p2
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .local v1, "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/app/MzResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "named":Z
    .restart local v1    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/MzResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/MzResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/MzResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v3, v0

    goto :goto_0

    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MzResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onContentChanged()V

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->onAlertContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MzResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v4, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/MzResolverActivity;->setTheme(I)V

    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "usagestats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/MzResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    sub-long v20, v4, v6

    .local v20, "sinceTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mStats:Ljava/util/Map;

    const-string v4, "MzResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sinceTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    const-string v4, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/MzResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    .local v12, "am":Landroid/app/ActivityManager;
    invoke-virtual {v12}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/app/MzResolverActivity;->mIconDpi:I

    invoke-virtual {v12}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/app/MzResolverActivity;->mIconSize:I

    new-instance v4, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/MzResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v13, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    .local v18, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v4, v4, -0x2

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_padding_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .local v19, "paddingtop":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/MzResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p3

    iput-object v0, v13, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    sget v4, Lcom/flyme/internal/R$drawable;->mz_ic_popup_share:I

    iput v4, v13, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v19, 0x0

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "count":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    if-ltz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    :cond_2
    :goto_2
    return-void

    .end local v12    # "am":Landroid/app/ActivityManager;
    .end local v13    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v15    # "count":I
    .end local v18    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "paddingtop":I
    .end local v20    # "sinceTime":J
    :catch_0
    move-exception v17

    .local v17, "e":Landroid/os/RemoteException;
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .end local v17    # "e":Landroid/os/RemoteException;
    .restart local v12    # "am":Landroid/app/ActivityManager;
    .restart local v13    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v18    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "paddingtop":I
    .restart local v20    # "sinceTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/MzResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$layout;->mz_resolve_custom_title:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .local v16, "customTitle":Landroid/widget/TextView;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    const/16 v19, 0x0

    goto :goto_1

    .end local v16    # "customTitle":Landroid/widget/TextView;
    .restart local v15    # "count":I
    :cond_4
    const/4 v4, 0x1

    if-le v15, v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/internal/app/MzResolverActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->setupAlert()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    if-eqz p7, :cond_2

    sget v4, Lcom/flyme/internal/R$id;->mz_check_bar:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/MzResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .local v14, "checkBarLayout":Landroid/view/ViewGroup;
    if-eqz v14, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v4, Lcom/flyme/internal/R$id;->mz_alwaysUse:I

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/flyme/internal/R$string;->alwaysUse:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .end local v14    # "checkBarLayout":Landroid/view/ViewGroup;
    :cond_5
    const/4 v4, 0x1

    if-ne v15, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/MzResolverActivity;->safelyStartActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "noApplications"

    invoke-static {v5, v6}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v13, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v4, v13, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    goto/16 :goto_2

    .restart local v14    # "checkBarLayout":Landroid/view/ViewGroup;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 27
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_e

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .end local v12    # "cat":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .local v14, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .local v18, "mimeType":Ljava/lang/String;
    if-eqz v18, :cond_3

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v18    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_4

    const-string v2, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_4
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v20, :cond_6

    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .local v26, "ssp":Ljava/lang/String;
    :cond_5
    if-eqz v26, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .local v19, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v26    # "ssp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_8

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v14}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v22

    .local v22, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v22, :cond_c

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v22    # "port":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .local v21, "path":Ljava/lang/String;
    :cond_9
    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .restart local v19    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v21    # "path":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v25, v0

    .local v25, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, "bestMatch":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .local v23, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v25, v16

    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_b

    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v16    # "i":I
    .end local v23    # "r":Landroid/content/pm/ResolveInfo;
    .end local v25    # "set":[Landroid/content/ComponentName;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto/16 :goto_1

    .end local v15    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v18    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v22    # "port":I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v22    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_d
    if-eqz p3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "data":Landroid/net/Uri;
    .end local v16    # "i":I
    .end local v25    # "set":[Landroid/content/ComponentName;
    :cond_e
    :goto_4
    if-eqz p2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x2000001

    and-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MzResolverActivity;->safelyStartActivity(Landroid/content/Intent;)V

    :cond_10
    return-void

    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "data":Landroid/net/Uri;
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_11
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v24

    .local v24, "re":Landroid/os/RemoteException;
    const-string v2, "MzResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    :cond_1
    return-void
.end method

.method resizeGrid()V
    .locals 9

    .prologue
    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .local v0, "itemCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/16 v3, 0x9

    .local v3, "numPreRow":I
    :goto_0
    if-le v0, v3, :cond_1

    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/meizu/widget/DragGridView;->setNumColumns(I)V

    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_item_gap_between_columns_small:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/DragGridView;->setHorizontalSpacing(I)V

    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v6, v6, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_width_large:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/AlertControllerExt;->setWidth(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v5, "screenWidth":I
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v4, "screenHeight":I
    if-le v5, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_resolve_window_land_max_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "mMaxHeight":I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v6, v6, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertControllerExt;->setMaxHeight(I)V

    return-void

    .end local v1    # "mMaxHeight":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "numPreRow":I
    .end local v4    # "screenHeight":I
    .end local v5    # "screenWidth":I
    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    .restart local v3    # "numPreRow":I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/meizu/widget/DragGridView;->setNumColumns(I)V

    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mGrid:Lcom/meizu/widget/DragGridView;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_item_gap_between_columns:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/DragGridView;->setHorizontalSpacing(I)V

    iget-object v6, p0, Lcom/android/internal/app/MzResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v6, v6, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/AlertControllerExt;->setWidth(I)V

    goto :goto_1

    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "screenHeight":I
    .restart local v5    # "screenWidth":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_resolve_window_port_max_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1    # "mMaxHeight":I
    goto :goto_2
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-boolean v3, p0, Lcom/android/internal/app/MzResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/app/MzResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "MzResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method protected setupAlert()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->applyMeizuStyle()V

    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MzResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startSelected(IZZ)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.requset_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->setResult(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/MzResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    goto :goto_0
.end method
