.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TwHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkIdState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field checkState:Landroid/util/SparseBooleanArray;

.field checkedItemCount:I

.field filter:Ljava/lang/String;

.field firstId:J

.field inActionMode:Z

.field position:I

.field selectedId:J

.field viewLeft:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2344
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2290
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    .line 2292
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    .line 2293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    .line 2295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->width:I

    .line 2296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2297
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2299
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2301
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 2302
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2304
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2305
    .local v2, "key":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2306
    .local v4, "value":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2297
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "key":J
    .end local v4    # "value":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2309
    .restart local v0    # "N":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;

    .prologue
    .line 2267
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2283
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2284
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwHorizontalAbsListView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 2313
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2314
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->selectedId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2315
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->firstId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2316
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->viewLeft:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->position:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->width:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2320
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2321
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkedItemCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 2323
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2324
    .local v0, "N":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 2326
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2327
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2325
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    move v2, v3

    .line 2320
    goto :goto_0

    :cond_1
    move v0, v3

    .line 2323
    goto :goto_1

    .line 2329
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method
