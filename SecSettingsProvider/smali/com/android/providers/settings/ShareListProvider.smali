.class public Lcom/android/providers/settings/ShareListProvider;
.super Landroid/content/ContentProvider;
.source "ShareListProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;
    }
.end annotation


# static fields
.field private static final mMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "meizu_share"

    const-string v2, "share_list/"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "meizu_share"

    const-string v2, "share_list/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v2}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    const-string v2, "share_list"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v5}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .local v0, "code":I
    const-wide/16 v2, -0x1

    .local v2, "id":J
    packed-switch v0, :pswitch_data_0

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    :goto_1
    return-object v4

    :pswitch_0
    const-string v5, "share_list"

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-string v4, "content://meizu_share/share_list"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    new-instance v0, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {p0}, Lcom/android/providers/settings/ShareListProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;-><init>(Lcom/android/providers/settings/ShareListProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .local v8, "code":I
    packed-switch v8, :pswitch_data_0

    :goto_0
    return-object v5

    :pswitch_0
    const-string v1, "share_list"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/providers/settings/ShareListProvider;->mHelper:Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;

    invoke-virtual {v2}, Lcom/android/providers/settings/ShareListProvider$LocalSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/providers/settings/ShareListProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    const-string v2, "share_list"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
