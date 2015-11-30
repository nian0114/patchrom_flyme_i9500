.class Landroid/media/SoundPool$SoundPoolImpl;
.super Ljava/lang/Object;
.source "SoundPool.java"

# interfaces
.implements Landroid/media/SoundPool$SoundPoolDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoundPoolImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$SoundPoolImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mPrevLeftVolume:F

.field private mPrevRightVolume:F

.field private mProxy:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/SoundPool;ILandroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "proxy"    # Landroid/media/SoundPool;
    .param p2, "maxStreams"    # I
    .param p3, "attr"    # Landroid/media/AudioAttributes;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevLeftVolume:F

    iput v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevRightVolume:F

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p2, p3}, Landroid/media/SoundPool$SoundPoolImpl;->native_setup(Ljava/lang/Object;ILjava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Native setup failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mProxy:Landroid/media/SoundPool;

    iput-object p3, p0, Landroid/media/SoundPool$SoundPoolImpl;->mAttributes:Landroid/media/AudioAttributes;

    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    return-void
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _load(Ljava/lang/String;I)I
.end method

.method private final native _setVolume(IFF)V
.end method

.method static synthetic access$100(Landroid/media/SoundPool$SoundPoolImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/SoundPool$SoundPoolImpl;

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool$SoundPoolImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/SoundPool$SoundPoolImpl;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/SoundPool$SoundPoolImpl;

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool$SoundPoolImpl;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/media/SoundPool$SoundPoolImpl;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v4, 0x1c

    iget-object v5, p0, Landroid/media/SoundPool$SoundPoolImpl;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .local v1, "mode":I
    if-eqz v1, :cond_0

    const-string v3, "SoundPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It is mode ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private final native native_setup(Ljava/lang/Object;ILjava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "weakRef"    # Ljava/lang/Object;
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "weakRef":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool$SoundPoolImpl;

    .local v1, "soundPoolImpl":Landroid/media/SoundPool$SoundPoolImpl;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Landroid/media/SoundPool$SoundPoolImpl;->mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/SoundPool$SoundPoolImpl;->mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/SoundPool$SoundPoolImpl;->mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final native _play(IFFIIF)I
.end method

.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/media/SoundPool$SoundPoolImpl;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v8, 0x0

    .local v8, "id":I
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolImpl;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v8

    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v8

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 7
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .local v4, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolImpl;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    .end local v4    # "len":J
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool$SoundPoolImpl;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool$SoundPoolImpl;->_load(Ljava/lang/String;I)I

    move-result v10

    :cond_0
    :goto_0
    return v10

    :cond_1
    const/4 v10, 0x0

    .local v10, "id":I
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "f":Ljava/io/File;
    const/high16 v0, 0x10000000

    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .local v9, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolImpl;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v10

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    const-string v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final native pause(I)V
.end method

.method public final play(IFFIIF)I
    .locals 1
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    invoke-direct {p0}, Landroid/media/SoundPool$SoundPoolImpl;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    move p2, p3

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevRightVolume:F

    iput v0, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevLeftVolume:F

    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/media/SoundPool$SoundPoolImpl;->_play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public final native release()V
.end method

.method public final native resume(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    iget-object v2, p0, Landroid/media/SoundPool$SoundPoolImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    iget-object v3, p0, Landroid/media/SoundPool$SoundPoolImpl;->mProxy:Landroid/media/SoundPool;

    invoke-direct {v1, p0, v3, v0}, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;-><init>(Landroid/media/SoundPool$SoundPoolImpl;Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    .end local v0    # "looper":Landroid/os/Looper;
    :goto_0
    iput-object p1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    monitor-exit v2

    return-void

    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    iget-object v3, p0, Landroid/media/SoundPool$SoundPoolImpl;->mProxy:Landroid/media/SoundPool;

    invoke-direct {v1, p0, v3, v0}, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;-><init>(Landroid/media/SoundPool$SoundPoolImpl;Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    goto :goto_0

    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;

    goto :goto_0

    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl;->mEventHandler:Landroid/media/SoundPool$SoundPoolImpl$EventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public final native setStreamType(I)V
.end method

.method public setVolume(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .prologue
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool$SoundPoolImpl;->setVolume(IFF)V

    return-void
.end method

.method public final setVolume(IFF)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    iget v0, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevLeftVolume:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevRightVolume:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p2, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevLeftVolume:F

    iput p3, p0, Landroid/media/SoundPool$SoundPoolImpl;->mPrevRightVolume:F

    invoke-direct {p0}, Landroid/media/SoundPool$SoundPoolImpl;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolImpl;->_setVolume(IFF)V

    goto :goto_0
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method
