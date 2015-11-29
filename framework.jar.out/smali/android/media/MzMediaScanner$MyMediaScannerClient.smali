.class Landroid/media/MzMediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MzMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MzMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDate:I

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mIsProtectBox:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoRotate:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MzMediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MzMediaScanner;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MzMediaScanner;Landroid/media/MzMediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MzMediaScanner;
    .param p2, "x1"    # Landroid/media/MzMediaScanner$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MzMediaScanner;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/media/MzMediaScanner$MyMediaScannerClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner$MyMediaScannerClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->processCuePlaylist(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private clearMetadata()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTrack:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mYear:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDate:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDuration:I

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mCompilation:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWidth:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mHeight:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mVideoRotate:I

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MzMediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MzMediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 32
    .param p1, "entry"    # Landroid/media/MzMediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "title":Ljava/lang/String;
    if-eqz v29, :cond_2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v4, "title"

    move-object/from16 v0, v29

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v26, v0

    .local v26, "rowId":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_4
    :goto_0
    const/16 v19, 0x0

    .local v19, "isVideo":Z
    const/16 v18, 0x0

    .local v18, "isImage":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$600(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v28

    .local v28, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$2400(Landroid/media/MzMediaScanner;)Landroid/media/MediaInserter;

    move-result-object v17

    .local v17, "inserter":Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$2500(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v28

    const/16 v19, 0x1

    :cond_5
    :goto_1
    const/4 v6, 0x0

    .local v6, "result":Landroid/net/Uri;
    const/16 v24, 0x0

    .local v24, "needToSetSettings":Z
    const/4 v11, 0x0

    .local v11, "defaultNotifSound":Z
    const/16 v23, 0x0

    .local v23, "mmsSound":Z
    const/16 v21, 0x0

    .local v21, "mailSound":Z
    const/4 v10, 0x0

    .local v10, "calendarSound":Z
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-nez v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$1600(Landroid/media/MzMediaScanner;)I

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$1600(Landroid/media/MzMediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$600(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MzMediaScanner$FileEntry;->mFormat:I

    move/from16 v16, v0

    .local v16, "format":I
    if-nez v16, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    :cond_7
    const-string v4, "format"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v16    # "format":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$2700(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p3, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$2800(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$2900(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$2900(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const/16 v24, 0x1

    const/4 v11, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultMmsSet:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3000(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultMmsFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3100(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultMmsFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$3100(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const/16 v24, 0x1

    const/16 v23, 0x1

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultMailSet:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3200(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultMailFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3300(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultMailFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$3300(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const/16 v24, 0x1

    const/16 v21, 0x1

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultCanlendarSet:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3400(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultCanlendarFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultCanlendarFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$3500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    const/16 v24, 0x1

    const/4 v10, 0x1

    :cond_10
    :goto_2
    if-eqz v17, :cond_11

    if-eqz v24, :cond_23

    :cond_11
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaInserter;->flushAll()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->insertM3uList(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :goto_3
    if-eqz v6, :cond_13

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    :cond_13
    :goto_4
    if-eqz v24, :cond_17

    if-eqz p3, :cond_2d

    if-eqz v23, :cond_14

    const-string v4, "mms_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MzMediaScanner;->mDefaultMmsSet:Z
    invoke-static {v4, v5}, Landroid/media/MzMediaScanner;->access$3002(Landroid/media/MzMediaScanner;Z)Z

    :cond_14
    if-eqz v21, :cond_15

    const-string v4, "email_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MzMediaScanner;->mDefaultMailSet:Z
    invoke-static {v4, v5}, Landroid/media/MzMediaScanner;->access$3202(Landroid/media/MzMediaScanner;Z)Z

    :cond_15
    if-eqz v10, :cond_16

    const-string v4, "calendar_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MzMediaScanner;->mDefaultCanlendarSet:Z
    invoke-static {v4, v5}, Landroid/media/MzMediaScanner;->access$3402(Landroid/media/MzMediaScanner;Z)Z

    :cond_16
    if-eqz v11, :cond_17

    const-string v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MzMediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Landroid/media/MzMediaScanner;->access$2802(Landroid/media/MzMediaScanner;Z)Z

    :cond_17
    :goto_5
    return-object v6

    .end local v6    # "result":Landroid/net/Uri;
    .end local v10    # "calendarSound":Z
    .end local v11    # "defaultNotifSound":Z
    .end local v17    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "isImage":Z
    .end local v19    # "isVideo":Z
    .end local v21    # "mailSound":Z
    .end local v23    # "mmsSound":Z
    .end local v24    # "needToSetSettings":Z
    .end local v28    # "tableUri":Landroid/net/Uri;
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "name"

    move-object/from16 v0, v29

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_4

    const/4 v13, 0x0

    .local v13, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v14, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v14, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "exif":Landroid/media/ExifInterface;
    .local v14, "exif":Landroid/media/ExifInterface;
    move-object v13, v14

    .end local v14    # "exif":Landroid/media/ExifInterface;
    .restart local v13    # "exif":Landroid/media/ExifInterface;
    :goto_6
    if-eqz v13, :cond_4

    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .local v20, "latlng":[F
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1a
    invoke-virtual {v13}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v30

    .local v30, "time":J
    const-wide/16 v4, -0x1

    cmp-long v4, v30, v4

    if-eqz v4, :cond_1c

    const-string v4, "datetaken"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1b
    :goto_7
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v13, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v25

    .local v25, "orientation":I
    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_4

    packed-switch v25, :pswitch_data_0

    :pswitch_0
    const/4 v12, 0x0

    .local v12, "degree":I
    :goto_8
    const-string v4, "orientation"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .end local v12    # "degree":I
    .end local v25    # "orientation":I
    :cond_1c
    invoke-virtual {v13}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v30

    const-wide/16 v4, -0x1

    cmp-long v4, v30, v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v30

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1b

    const-string v4, "datetaken"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .restart local v25    # "orientation":I
    :pswitch_1
    const/16 v12, 0x5a

    .restart local v12    # "degree":I
    goto :goto_8

    .end local v12    # "degree":I
    :pswitch_2
    const/16 v12, 0xb4

    .restart local v12    # "degree":I
    goto :goto_8

    .end local v12    # "degree":I
    :pswitch_3
    const/16 v12, 0x10e

    .restart local v12    # "degree":I
    goto :goto_8

    .end local v12    # "degree":I
    .end local v13    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "latlng":[F
    .end local v25    # "orientation":I
    .end local v30    # "time":J
    .restart local v17    # "inserter":Landroid/media/MediaInserter;
    .restart local v18    # "isImage":Z
    .restart local v19    # "isVideo":Z
    .restart local v28    # "tableUri":Landroid/net/Uri;
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$2600(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v28

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$1500(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v28

    goto/16 :goto_1

    .restart local v6    # "result":Landroid/net/Uri;
    .restart local v10    # "calendarSound":Z
    .restart local v11    # "defaultNotifSound":Z
    .restart local v21    # "mailSound":Z
    .restart local v23    # "mmsSound":Z
    .restart local v24    # "needToSetSettings":Z
    :cond_1f
    if-eqz p2, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3600(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3700(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$3700(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_20
    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_21
    if-eqz p4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3800(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$3900(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$3900(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_22
    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_23
    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_24

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_3

    :cond_25
    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    if-nez v19, :cond_26

    if-eqz v18, :cond_27

    :cond_26
    const-string v4, "mini_thumb_magic"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_27
    const/16 v22, 0x0

    .local v22, "mediaType":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MzMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v15

    .local v15, "fileType":I
    invoke-static {v15}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v22, 0x2

    :cond_28
    :goto_9
    const-string v4, "media_type"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v15    # "fileType":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .restart local v15    # "fileType":I
    :cond_2a
    invoke-static {v15}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/16 v22, 0x3

    goto :goto_9

    :cond_2b
    invoke-static {v15}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v22, 0x1

    goto :goto_9

    :cond_2c
    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v22, 0x4

    goto :goto_9

    .end local v15    # "fileType":I
    .end local v22    # "mediaType":I
    :cond_2d
    if-eqz p2, :cond_2e

    const-string v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MzMediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Landroid/media/MzMediaScanner;->access$3602(Landroid/media/MzMediaScanner;Z)Z

    goto/16 :goto_5

    :cond_2e
    if-eqz p4, :cond_17

    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MzMediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Landroid/media/MzMediaScanner;->access$3802(Landroid/media/MzMediaScanner;Z)Z

    goto/16 :goto_5

    .end local v6    # "result":Landroid/net/Uri;
    .end local v10    # "calendarSound":Z
    .end local v11    # "defaultNotifSound":Z
    .end local v17    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "isImage":Z
    .end local v19    # "isVideo":Z
    .end local v21    # "mailSound":Z
    .end local v23    # "mmsSound":Z
    .end local v24    # "needToSetSettings":Z
    .end local v28    # "tableUri":Landroid/net/Uri;
    .restart local v13    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # invokes: Landroid/media/MzMediaScanner;->isDrmEnabled()Z
    invoke-static {v2}, Landroid/media/MzMediaScanner;->access$200(Landroid/media/MzMediaScanner;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    .local v1, "resultFileType":I
    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MzMediaScanner;->access$4600(Landroid/media/MzMediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$4500(Landroid/media/MzMediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2, v3}, Landroid/media/MzMediaScanner;->access$4602(Landroid/media/MzMediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    :cond_2
    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MzMediaScanner;->access$4600(Landroid/media/MzMediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mIsDrm:Z

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MzMediaScanner;->access$4600(Landroid/media/MzMediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private insertM3uList(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 13
    .param p1, "result"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mM3uCopingFlg:Z
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$4000(Landroid/media/MzMediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->isM3uMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mM3uMembersUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$4100(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "m3uPlaylist":Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "members"

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .local v12, "playlistId":I
    const/4 v10, 0x0

    .local v10, "count":I
    const-string v4, "playlist_id = ?"

    .local v4, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mM3uMembersUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MzMediaScanner;->access$4100(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "count(*)"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "audioId":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string v0, "play_order"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "audio_id"

    int-to-long v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mM3uMembersUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/MzMediaScanner;->access$4100(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "audioId":I
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "count":I
    .end local v11    # "m3uPlaylist":Ljava/lang/String;
    .end local v12    # "playlistId":I
    :cond_2
    return-void
.end method

.method private isM3uMusic()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    iget-object v11, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    iget-object v12, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "fileDirectory":Ljava/lang/String;
    iget-object v11, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mM3uPath:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MzMediaScanner;->access$4200(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mM3uPath:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MzMediaScanner;->access$4200(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v12

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "m3uDirectory":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v8, 0x0

    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mM3uPath:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MzMediaScanner;->access$4200(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v3}, Landroid/media/CueHelper;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .local v0, "charset":Ljava/lang/String;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v12, 0x2000

    invoke-direct {v9, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    iget-object v11, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;
    invoke-static {v11}, Landroid/media/MzMediaScanner;->access$4300(Landroid/media/MzMediaScanner;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-eq v11, v12, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "entryLength":I
    :goto_1
    if-lez v2, :cond_0

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-eqz v11, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x3

    if-ge v2, v11, :cond_2

    if-eqz v9, :cond_1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "entryLength":I
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    return v10

    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v2    # "entryLength":I
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v11, "MzMediaScanner"

    const-string v12, "IOException in MediaScanner.isM3uMusic()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_3
    iget-object v11, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    iget-object v12, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    # invokes: Landroid/media/MzMediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v11, v12, v5}, Landroid/media/MzMediaScanner;->access$4400(Landroid/media/MzMediaScanner;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .local v7, "matchLength":I
    if-lez v7, :cond_4

    const-string v11, "MzMediaScanner"

    const-string v12, "This file is m3u music."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "MzMediaScanner"

    const-string v12, "IOException in MediaScanner.isM3uMusic()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entryLength":I
    .end local v7    # "matchLength":I
    :cond_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    goto :goto_0

    :cond_5
    move-object v8, v9

    .end local v0    # "charset":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_6
    if-eqz v8, :cond_7

    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v3    # "f":Ljava/io/File;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    const-string v11, "MzMediaScanner"

    const-string v12, "This file is NOT m3u music."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v3    # "f":Ljava/io/File;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "MzMediaScanner"

    const-string v12, "IOException in MediaScanner.isM3uMusic()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v11, "MzMediaScanner"

    const-string v12, "IOException in MediaScanner.isM3uMusic()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_7

    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    const-string v11, "MzMediaScanner"

    const-string v12, "IOException in MediaScanner.isM3uMusic()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v8, :cond_8

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_8
    :goto_6
    throw v10

    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "MzMediaScanner"

    const-string v12, "IOException in MediaScanner.isM3uMusic()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private parseDate(Ljava/lang/String;)I
    .locals 20
    .param p1, "dateStr"    # Ljava/lang/String;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    const/16 v16, 0x0

    .local v16, "year":I
    const/4 v12, 0x0

    .local v12, "month":I
    const/4 v2, 0x0

    .local v2, "day":I
    const/4 v7, -0x1

    .local v7, "f":I
    const/4 v14, -0x1

    .local v14, "s":I
    const/4 v6, -0x1

    .local v6, "end":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, "len":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-nez v18, :cond_1

    if-gez v7, :cond_2

    move v7, v8

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-gez v14, :cond_3

    move v14, v8

    goto :goto_2

    :cond_3
    if-gez v6, :cond_4

    move v6, v8

    goto :goto_2

    :cond_4
    if-nez v7, :cond_6

    :cond_5
    :goto_3
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v18, v0

    mul-int/lit8 v19, v12, 0x64

    add-int v18, v18, v19

    add-int v11, v18, v2

    .local v11, "merge":I
    goto :goto_0

    .end local v11    # "merge":I
    :cond_6
    if-gez v7, :cond_9

    const/16 v17, 0x0

    .local v17, "ys":I
    const/16 v18, 0x4

    :try_start_0
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    .local v15, "ye":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    if-ge v15, v9, :cond_8

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .local v13, "ms":I
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .local v10, "me":I
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "ds":I
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .local v3, "de":I
    if-eq v13, v10, :cond_7

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    :cond_7
    :goto_4
    if-eq v4, v3, :cond_5

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    goto :goto_3

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .end local v3    # "de":I
    .end local v4    # "ds":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "me":I
    .end local v13    # "ms":I
    .end local v15    # "ye":I
    .end local v17    # "ys":I
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "de":I
    .restart local v4    # "ds":I
    .restart local v10    # "me":I
    .restart local v13    # "ms":I
    .restart local v15    # "ye":I
    .restart local v17    # "ys":I
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v3    # "de":I
    .end local v4    # "ds":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "me":I
    .end local v13    # "ms":I
    :cond_8
    const/4 v12, 0x0

    const/4 v2, 0x0

    goto :goto_3

    .end local v15    # "ye":I
    .end local v17    # "ys":I
    :cond_9
    if-gez v14, :cond_b

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .restart local v13    # "ms":I
    add-int/lit8 v18, v7, 0x3

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v10

    .restart local v10    # "me":I
    if-eq v13, v10, :cond_a

    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v12

    :cond_a
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_3

    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "me":I
    .end local v13    # "ms":I
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v16

    add-int/lit8 v18, v7, 0x1

    :try_start_7
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v12

    :goto_6
    add-int/lit8 v18, v14, 0x1

    :try_start_8
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4    # "ds":I
    if-lez v6, :cond_c

    add-int/lit8 v18, v14, 0x3

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v3

    .restart local v3    # "de":I
    :goto_7
    if-eq v4, v3, :cond_5

    :try_start_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result v2

    goto/16 :goto_3

    .end local v3    # "de":I
    .end local v4    # "ds":I
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "ds":I
    :cond_c
    add-int/lit8 v18, v14, 0x3

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "de":I
    goto :goto_7

    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    if-ne p2, v1, :cond_0

    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    goto :goto_0

    .end local p2    # "start":I
    .restart local v3    # "start":I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .local v2, "result":I
    :goto_1
    if-ge v3, v1, :cond_5

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    move p3, v2

    goto :goto_0
.end method

.method private processCuePlaylist(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 61
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cueFilePath"    # Ljava/lang/String;
    .param p3, "playlistUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v29, Landroid/media/CueHelper;

    invoke-direct/range {v29 .. v29}, Landroid/media/CueHelper;-><init>()V

    .local v29, "cue":Landroid/media/CueHelper;
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/CueHelper;->loadCueFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getMusicFilePath()Ljava/lang/String;

    move-result-object v48

    .local v48, "musicFilePath":Ljava/lang/String;
    if-eqz v48, :cond_0

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .end local v48    # "musicFilePath":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v48    # "musicFilePath":Ljava/lang/String;
    :cond_1
    new-instance v47, Ljava/io/File;

    invoke-direct/range {v47 .. v48}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v47, "musicFile":Ljava/io/File;
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-nez p3, :cond_a

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v39

    .local v39, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "entry":Landroid/media/MzMediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$400(Landroid/media/MzMediaScanner;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    check-cast v2, Landroid/media/MzMediaScanner$FileEntry;

    .restart local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/media/MzMediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MzMediaScanner$FileEntry;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Landroid/media/MzMediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/media/MzMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    :cond_4
    const/16 v28, 0x0

    .local v28, "count":I
    const-string v7, "_data LIKE ?1 "

    .local v7, "where":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v55

    .local v55, "subkey":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$600(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "count(*)"

    aput-object v10, v6, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v27

    .local v27, "c":Landroid/database/Cursor;
    if-eqz v27, :cond_6

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    :cond_5
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_6
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v30, "cueFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v22, 0x3e8

    div-long v40, v4, v22

    .local v40, "lastModified":J
    iget-wide v4, v2, Landroid/media/MzMediaScanner$FileEntry;->mLastModified:J

    sub-long v32, v40, v4

    .local v32, "delta":J
    const/4 v3, 0x2

    move/from16 v0, v28

    if-le v0, v3, :cond_7

    iget-boolean v3, v2, Landroid/media/MzMediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_7

    const-wide/16 v4, 0x1

    cmp-long v3, v32, v4

    if-gtz v3, :cond_7

    const-wide/16 v4, -0x1

    cmp-long v3, v32, v4

    if-ltz v3, :cond_7

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_7
    move-wide/from16 v0, v40

    iput-wide v0, v2, Landroid/media/MzMediaScanner$FileEntry;->mLastModified:J

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/media/MzMediaScanner$FileEntry;->mLastModifiedChanged:Z

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, "listValues":Landroid/content/ContentValues;
    iget-wide v0, v2, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v52, v0

    .local v52, "playlistId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v52, v4

    if-nez v3, :cond_b

    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getMusicFileName()Ljava/lang/String;

    move-result-object v49

    .local v49, "name":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cdimage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const/16 v3, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v42

    .local v42, "lidx":I
    if-lez v42, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .local v34, "dir":Ljava/lang/String;
    const/16 v3, 0x2f

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v42

    if-lez v42, :cond_9

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v42

    if-ge v0, v3, :cond_9

    add-int/lit8 v3, v42, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v49

    .end local v34    # "dir":Ljava/lang/String;
    .end local v42    # "lidx":I
    :cond_9
    :goto_1
    const-string v3, "name"

    move-object/from16 v0, v49

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date_modified"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPlaylistsUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$800(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v3, v4, v5, v12}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .local v11, "uri":Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v52

    const-string v3, "members"

    invoke-static {v11, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .end local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "listValues":Landroid/content/ContentValues;
    .end local v27    # "c":Landroid/database/Cursor;
    .end local v28    # "count":I
    .end local v30    # "cueFile":Ljava/io/File;
    .end local v32    # "delta":J
    .end local v39    # "key":Ljava/lang/String;
    .end local v40    # "lastModified":J
    .end local v49    # "name":Ljava/lang/String;
    .end local v52    # "playlistId":J
    .end local v55    # "subkey":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-static/range {v48 .. v48}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v45

    .local v45, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v45, :cond_c

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v45    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .restart local v7    # "where":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "listValues":Landroid/content/ContentValues;
    .restart local v27    # "c":Landroid/database/Cursor;
    .restart local v28    # "count":I
    .restart local v30    # "cueFile":Ljava/io/File;
    .restart local v32    # "delta":J
    .restart local v39    # "key":Ljava/lang/String;
    .restart local v40    # "lastModified":J
    .restart local v49    # "name":Ljava/lang/String;
    .restart local v52    # "playlistId":J
    .restart local v55    # "subkey":Ljava/lang/String;
    :catch_0
    move-exception v35

    .local v35, "e":Ljava/lang/Exception;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v35    # "e":Ljava/lang/Exception;
    .end local v49    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPlaylistsUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$800(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v3

    move-wide/from16 v0, v52

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .restart local v11    # "uri":Landroid/net/Uri;
    const-string v3, "date_modified"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getMusicFileName()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "name":Ljava/lang/String;
    const-string v3, "name"

    move-object/from16 v0, v49

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "members"

    invoke-static {v11, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Landroid/media/MzMediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MzMediaScanner$FileEntry;

    move-result-object v36

    .local v36, "entryflac":Landroid/media/MzMediaScanner$FileEntry;
    if-eqz v36, :cond_a

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .local v16, "values":Landroid/content/ContentValues;
    const-string v3, "is_music"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "media_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$600(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v36

    iget-wide v4, v0, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .local v15, "uriflac":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "listValues":Landroid/content/ContentValues;
    .end local v15    # "uriflac":Landroid/net/Uri;
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v27    # "c":Landroid/database/Cursor;
    .end local v28    # "count":I
    .end local v30    # "cueFile":Ljava/io/File;
    .end local v32    # "delta":J
    .end local v36    # "entryflac":Landroid/media/MzMediaScanner$FileEntry;
    .end local v39    # "key":Ljava/lang/String;
    .end local v40    # "lastModified":J
    .end local v49    # "name":Ljava/lang/String;
    .end local v52    # "playlistId":J
    .end local v55    # "subkey":Ljava/lang/String;
    .restart local v45    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->clearMetadata()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    move-object/from16 v0, v45

    iget-object v4, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    # invokes: Landroid/media/MzMediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v4, v1}, Landroid/media/MzMediaScanner;->access$900(Landroid/media/MzMediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v26, v0

    .local v26, "artistFromMusic":Ljava/lang/String;
    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_10

    :cond_f
    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getCuePerformer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getCuePerformer()Ljava/lang/String;

    move-result-object v26

    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    move-object/from16 v25, v0

    .local v25, "albumFromMusic":Ljava/lang/String;
    if-eqz v25, :cond_11

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_12

    :cond_11
    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getCueTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getCueTitle()Ljava/lang/String;

    move-result-object v26

    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    move-object/from16 v59, v0

    .local v59, "titleFromMusic":Ljava/lang/String;
    if-eqz v59, :cond_13

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_14

    :cond_13
    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getMusicFileName()Ljava/lang/String;

    move-result-object v59

    :cond_14
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v22, 0x3e8

    div-long v50, v4, v22

    .local v50, "musicLastModified":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mYear:I

    move/from16 v60, v0

    .local v60, "year":I
    const/16 v54, 0x0

    .local v54, "result":Landroid/net/Uri;
    invoke-virtual/range {v29 .. v29}, Landroid/media/CueHelper;->getTrackCount()I

    move-result v28

    .restart local v28    # "count":I
    move/from16 v0, v28

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v43, v0

    .local v43, "listItems":[Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v44

    .local v44, "lowpath":Ljava/lang/String;
    # getter for: Landroid/media/MzMediaScanner;->MUSIC_DIR:Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$1000()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    .local v46, "music":Z
    const/16 v37, 0x1

    .local v37, "i":I
    :goto_5
    move/from16 v0, v37

    move/from16 v1, v28

    if-gt v0, v1, :cond_20

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/media/CueHelper;->makeCusForTrack(I)Ljava/lang/String;

    move-result-object v21

    .local v21, "cusFilePath":Ljava/lang/String;
    move-object/from16 v31, v21

    .local v31, "cusKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$1100(Landroid/media/MzMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$1200(Landroid/media/MzMediaScanner;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/media/MzMediaScanner$FileEntry;

    .local v18, "cusEntry":Landroid/media/MzMediaScanner$FileEntry;
    if-nez v18, :cond_16

    new-instance v18, Landroid/media/MzMediaScanner$FileEntry;

    .end local v18    # "cusEntry":Landroid/media/MzMediaScanner$FileEntry;
    const-wide/16 v19, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v18 .. v24}, Landroid/media/MzMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v18    # "cusEntry":Landroid/media/MzMediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$1200(Landroid/media/MzMediaScanner;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v56, v0

    .local v56, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v56, v4

    if-nez v3, :cond_19

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/media/CueHelper;->getTrackTag(I)Landroid/media/CueHelper$CueTrackTag;

    move-result-object v58

    .local v58, "tag":Landroid/media/CueHelper$CueTrackTag;
    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/media/CueHelper;->getTrackInfo(I)Landroid/media/CueHelper$CueTrackInfo;

    move-result-object v38

    .local v38, "info":Landroid/media/CueHelper$CueTrackInfo;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .restart local v16    # "values":Landroid/content/ContentValues;
    const-string v3, "_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    if-eqz v3, :cond_1c

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1c

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date_modified"

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "_size"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "mime_type"

    const-string v4, "audio/cus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$1300(Landroid/media/MzMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$1400(Landroid/media/MzMediaScanner;)Landroid/media/MzMediaScanner$MyMediaScannerClient;

    move-result-object v3

    iget-object v3, v3, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    if-eqz v3, :cond_17

    const-string v3, "genre"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$1400(Landroid/media/MzMediaScanner;)Landroid/media/MzMediaScanner$MyMediaScannerClient;

    move-result-object v4

    iget-object v4, v4, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v4, "album_artist"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v3, v26

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "artist"

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    if-eqz v3, :cond_1e

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "album"

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    if-eqz v3, :cond_1f

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    move-object/from16 v0, v58

    iget-object v3, v0, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "composer"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$1400(Landroid/media/MzMediaScanner;)Landroid/media/MzMediaScanner$MyMediaScannerClient;

    move-result-object v4

    iget-object v4, v4, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v60, :cond_18

    const-string v3, "year"

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_18
    const-string v3, "track"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "duration"

    move-object/from16 v0, v38

    iget-wide v4, v0, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    move-object/from16 v0, v38

    iget-wide v0, v0, Landroid/media/CueHelper$CueTrackInfo;->startTime:J

    move-wide/from16 v22, v0

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "is_ringtone"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_notification"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_alarm"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_music"

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_podcast"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/MzMediaScanner;->access$1500(Landroid/media/MzMediaScanner;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-interface {v3, v4, v5, v0}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v54

    if-eqz v54, :cond_19

    invoke-static/range {v54 .. v54}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v56

    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v38    # "info":Landroid/media/CueHelper$CueTrackInfo;
    .end local v58    # "tag":Landroid/media/CueHelper$CueTrackTag;
    :cond_19
    add-int/lit8 v3, v37, -0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v43, v3

    add-int/lit8 v3, v37, -0x1

    aget-object v3, v43, v3

    const-string v4, "play_order"

    add-int/lit8 v5, v37, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v3, v37, -0x1

    aget-object v3, v43, v3

    const-string v4, "audio_id"

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .end local v18    # "cusEntry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v21    # "cusFilePath":Ljava/lang/String;
    .end local v25    # "albumFromMusic":Ljava/lang/String;
    .end local v28    # "count":I
    .end local v31    # "cusKey":Ljava/lang/String;
    .end local v37    # "i":I
    .end local v43    # "listItems":[Landroid/content/ContentValues;
    .end local v44    # "lowpath":Ljava/lang/String;
    .end local v46    # "music":Z
    .end local v50    # "musicLastModified":J
    .end local v54    # "result":Landroid/net/Uri;
    .end local v56    # "rowId":J
    .end local v59    # "titleFromMusic":Ljava/lang/String;
    .end local v60    # "year":I
    :cond_1a
    const-string v26, "<unknown>"

    goto/16 :goto_3

    .restart local v25    # "albumFromMusic":Ljava/lang/String;
    :cond_1b
    const-string v25, "<unknown>"

    goto/16 :goto_4

    .restart local v16    # "values":Landroid/content/ContentValues;
    .restart local v18    # "cusEntry":Landroid/media/MzMediaScanner$FileEntry;
    .restart local v21    # "cusFilePath":Ljava/lang/String;
    .restart local v28    # "count":I
    .restart local v31    # "cusKey":Ljava/lang/String;
    .restart local v37    # "i":I
    .restart local v38    # "info":Landroid/media/CueHelper$CueTrackInfo;
    .restart local v43    # "listItems":[Landroid/content/ContentValues;
    .restart local v44    # "lowpath":Ljava/lang/String;
    .restart local v46    # "music":Z
    .restart local v50    # "musicLastModified":J
    .restart local v54    # "result":Landroid/net/Uri;
    .restart local v56    # "rowId":J
    .restart local v58    # "tag":Landroid/media/CueHelper$CueTrackTag;
    .restart local v59    # "titleFromMusic":Ljava/lang/String;
    .restart local v60    # "year":I
    :cond_1c
    move-object/from16 v3, v59

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v3, v26

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v3, v25

    goto/16 :goto_9

    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v18    # "cusEntry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v21    # "cusFilePath":Ljava/lang/String;
    .end local v31    # "cusKey":Ljava/lang/String;
    .end local v38    # "info":Landroid/media/CueHelper$CueTrackInfo;
    .end local v56    # "rowId":J
    .end local v58    # "tag":Landroid/media/CueHelper$CueTrackTag;
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-interface {v3, v4, v0, v1}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v25    # "albumFromMusic":Ljava/lang/String;
    .end local v26    # "artistFromMusic":Ljava/lang/String;
    .end local v28    # "count":I
    .end local v37    # "i":I
    .end local v43    # "listItems":[Landroid/content/ContentValues;
    .end local v44    # "lowpath":Ljava/lang/String;
    .end local v45    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v46    # "music":Z
    .end local v47    # "musicFile":Ljava/io/File;
    .end local v48    # "musicFilePath":Ljava/lang/String;
    .end local v50    # "musicLastModified":J
    .end local v54    # "result":Landroid/net/Uri;
    .end local v59    # "titleFromMusic":Ljava/lang/String;
    .end local v60    # "year":I
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$2200(Landroid/media/MzMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$2200(Landroid/media/MzMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$2200(Landroid/media/MzMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$2200(Landroid/media/MzMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWidth:I

    iget-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MzMediaScanner;->access$2200(Landroid/media/MzMediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    iget-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MzMediaScanner;->access$4500(Landroid/media/MzMediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MzMediaScanner;->access$4500(Landroid/media/MzMediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "map":Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date_modified"

    iget-wide v4, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_size"

    iget-wide v4, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mInternalDB:Z
    invoke-static {v2}, Landroid/media/MzMediaScanner;->access$2300(Landroid/media/MzMediaScanner;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "is_locked"

    iget-boolean v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mIsProtectBox:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const/4 v1, 0x0

    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_1

    const-string v2, "width"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "height"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-boolean v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duration"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_2

    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "orientation"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mVideoRotate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    const-string v2, "<unknown>"

    goto :goto_0

    :cond_5
    const-string v2, "<unknown>"

    goto :goto_1

    :cond_6
    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_7

    const-string v2, "year"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDate:I

    if-eqz v2, :cond_8

    const-string v2, "date"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    const-string v2, "track"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "duration"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_9
    const-string v2, "<unknown>"

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MzMediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileSize:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mIsDrm:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mIsProtectBox:Z

    if-nez p7, :cond_8

    if-nez p8, :cond_0

    # invokes: Landroid/media/MzMediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MzMediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p8, 0x1

    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_1
    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .local v13, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .end local v13    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/CueHelper;->getCueFromMusic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .local v9, "cueFilePath":Ljava/lang/String;
    if-eqz v9, :cond_3

    :try_start_0
    const-string v3, "MzMediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginFile, processCuePlaylist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->processCuePlaylist(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .end local v9    # "cueFilePath":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v9    # "cueFilePath":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    const-string v3, "MzMediaScanner"

    const-string v4, "RemoteException in MyMediaScannerClient.beginFile()"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v9    # "cueFilePath":Ljava/lang/String;
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # invokes: Landroid/media/MzMediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$200(Landroid/media/MzMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_4
    :goto_1
    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MzMediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MzMediaScanner$FileEntry;

    move-result-object v2

    .local v2, "entry":Landroid/media/MzMediaScanner$FileEntry;
    if-eqz v2, :cond_9

    iget-wide v4, v2, Landroid/media/MzMediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v4

    .local v10, "delta":J
    :goto_2
    const-wide/16 v4, 0x1

    cmp-long v3, v10, v4

    if-gtz v3, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v3, v10, v4

    if-gez v3, :cond_a

    :cond_5
    const/4 v14, 0x1

    .local v14, "wasModified":Z
    :goto_3
    if-eqz v2, :cond_6

    if-eqz v14, :cond_7

    :cond_6
    if-eqz v14, :cond_b

    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MzMediaScanner$FileEntry;->mLastModified:J

    :goto_4
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MzMediaScanner$FileEntry;->mLastModifiedChanged:Z

    :cond_7
    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$300(Landroid/media/MzMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$400(Landroid/media/MzMediaScanner;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MzMediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "we don\'t process playlists ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in the main scan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v10    # "delta":J
    .end local v14    # "wasModified":Z
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzMediaFile;->getFileTitle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    goto :goto_1

    .restart local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    :cond_9
    const-wide/16 v10, 0x0

    goto :goto_2

    .restart local v10    # "delta":J
    :cond_a
    const/4 v14, 0x0

    goto :goto_3

    .restart local v14    # "wasModified":Z
    :cond_b
    new-instance v2, Landroid/media/MzMediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_c

    const/16 v8, 0x3001

    :goto_5
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MzMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    goto :goto_4

    .end local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    .restart local v2    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    :cond_d
    invoke-direct {p0}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->clearMetadata()V

    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mLastModified:J

    goto/16 :goto_0
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    const/16 v21, 0x0

    .local v21, "result":Landroid/net/Uri;
    :try_start_0
    const-string v4, "image/*"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MzMediaScanner"

    const-string v11, "------- reset inaccurate image mimeType to null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x0

    :cond_0
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p9

    invoke-virtual/range {v5 .. v13}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MzMediaScanner$FileEntry;

    move-result-object v5

    .local v5, "entry":Landroid/media/MzMediaScanner$FileEntry;
    if-nez v5, :cond_1

    move-object/from16 v22, v21

    .end local v5    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v21    # "result":Landroid/net/Uri;
    .local v22, "result":Landroid/net/Uri;
    :goto_0
    return-object v22

    .end local v22    # "result":Landroid/net/Uri;
    .restart local v5    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .restart local v21    # "result":Landroid/net/Uri;
    :cond_1
    const-string v4, "@meizu_protbox@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mIsProtectBox:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$1600(Landroid/media/MzMediaScanner;)I

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v12, 0x0

    iput-wide v12, v5, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    :cond_3
    if-eqz v5, :cond_5

    iget-boolean v4, v5, Landroid/media/MzMediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_4

    if-eqz p8, :cond_5

    :cond_4
    if-eqz p9, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MzMediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v21

    .end local v5    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    :cond_5
    :goto_1
    move-object/from16 v22, v21

    .end local v21    # "result":Landroid/net/Uri;
    .restart local v22    # "result":Landroid/net/Uri;
    goto :goto_0

    .end local v22    # "result":Landroid/net/Uri;
    .restart local v5    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .restart local v21    # "result":Landroid/net/Uri;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .local v20, "lowpath":Ljava/lang/String;
    # getter for: Landroid/media/MzMediaScanner;->EXTERNAL_DIR:Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$1700()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "/ringtones/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_8

    :cond_7
    # getter for: Landroid/media/MzMediaScanner;->EXTERNAL_RINGTONE_DIR:Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$1800()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    # getter for: Landroid/media/MzMediaScanner;->MUSIC_DIR:Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$1000()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_8
    const/4 v6, 0x1

    .local v6, "ringtones":Z
    :goto_2
    const-string v4, "/notifications/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_f

    const/4 v7, 0x1

    .local v7, "notifications":Z
    :goto_3
    const-string v4, "/alarms/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_10

    const/4 v8, 0x1

    .local v8, "alarms":Z
    :goto_4
    const-string v4, "/podcasts/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_11

    const/4 v10, 0x1

    .local v10, "podcasts":Z
    :goto_5
    # getter for: Landroid/media/MzMediaScanner;->MUSIC_DIR:Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$1000()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .local v9, "music":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v17

    .local v17, "isaudio":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v19

    .local v19, "isvideo":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v18

    .local v18, "isimage":Z
    if-nez v17, :cond_9

    if-nez v19, :cond_9

    if-eqz v18, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mExternalIsEmulated:Z
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$1900(Landroid/media/MzMediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MzMediaScanner;->access$2000(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MzMediaScanner;->access$2000(Landroid/media/MzMediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "directPath":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v16, "f":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 p1, v14

    .end local v14    # "directPath":Ljava/lang/String;
    .end local v16    # "f":Ljava/io/File;
    :cond_a
    if-nez v17, :cond_b

    if-eqz v19, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    # invokes: Landroid/media/MzMediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v4, v0, v1, v2}, Landroid/media/MzMediaScanner;->access$900(Landroid/media/MzMediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    :cond_c
    if-eqz v18, :cond_d

    invoke-direct/range {p0 .. p1}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MzMediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    goto/16 :goto_1

    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v17    # "isaudio":Z
    .end local v18    # "isimage":Z
    .end local v19    # "isvideo":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v6    # "ringtones":Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_3

    .restart local v7    # "notifications":Z
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_4

    .restart local v8    # "alarms":Z
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_5

    .end local v5    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v20    # "lowpath":Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "MzMediaScanner"

    const-string v11, "RemoteException in MzMediaScanner.scanFile()"

    invoke-static {v4, v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_9

    const/4 v6, 0x0

    .local v6, "parenthesized":Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "number":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v0    # "c":C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "charAfterNumber":C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .local v2, "genreIndex":S
    if-ltz v2, :cond_9

    # getter for: Landroid/media/MzMediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    # getter for: Landroid/media/MzMediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_7

    # getter for: Landroid/media/MzMediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MzMediaScanner;->access$2100()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    :cond_7
    if-eq v2, v10, :cond_0

    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .local v7, "ret":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    .end local v3    # "i":I
    .end local v5    # "number":Ljava/lang/StringBuffer;
    .end local v6    # "parenthesized":Z
    .end local v7    # "ret":Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    goto :goto_0

    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    .restart local v3    # "i":I
    .restart local v5    # "number":Ljava/lang/StringBuffer;
    .restart local v6    # "parenthesized":Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .end local v2    # "genreIndex":S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iput-object p2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    :cond_a
    iget-object v3, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MzMediaScanner;

    # getter for: Landroid/media/MzMediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MzMediaScanner;->access$1300(Landroid/media/MzMediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mYear:I

    invoke-direct {p0, p2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDate:I

    goto/16 :goto_0

    :cond_e
    const-string v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .local v0, "num":I
    iget v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .end local v0    # "num":I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .restart local v0    # "num":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .end local v0    # "num":I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    :cond_13
    const-string v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    :cond_18
    const-string v1, "rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "video_rotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "video_rotate;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mVideoRotate:I

    goto/16 :goto_0

    :cond_1a
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    :cond_1b
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, v2, v2}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mFileType:I

    const-string v0, "MzMediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMimeType: mMimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MzMediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
