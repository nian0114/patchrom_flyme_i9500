.class Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;
.super Ljava/lang/Object;
.source "CocktailBarCocktailPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpadatableCocktailInfo"
.end annotation


# instance fields
.field private mCocktailList:Landroid/util/SparseBooleanArray;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->this$0:Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    iput p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->mUserId:I

    return-void
.end method


# virtual methods
.method public disableUpdate(I)V
    .locals 1
    .param p1, "cocktailId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public enableUpdate(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public getUserId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->mUserId:I

    return v0
.end method

.method public isUpdatedCocktail(I)Z
    .locals 1
    .param p1, "cocktailId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailBarCocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
