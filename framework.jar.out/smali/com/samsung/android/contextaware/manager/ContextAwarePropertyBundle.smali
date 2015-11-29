.class public Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
.super Ljava/lang/Object;
.source "ContextAwarePropertyBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    }
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final booleanVal:[Z

.field private static charArrayVal:[C

.field private static doubleArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleArrayVal:[D

.field private static doubleHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleVal:D

.field private static floatArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static floatArrayVal:[F

.field private static floatHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static floatVal:F

.field private static integerArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static integerArrayVal:[I

.field private static integerHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static integerVal:I

.field private static longArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static longArrayVal:[J

.field private static longHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static longVal:J

.field private static stringArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringArrayVal:[Ljava/lang/String;

.field private static stringHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringVal:Ljava/lang/String;

.field private static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Z

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "input"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100()[Z
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    return-object v0
.end method

.method static synthetic access$1000()[F
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayVal:[F

    return-object v0
.end method

.method static synthetic access$1002([F)[F
    .locals 0
    .param p0, "x0"    # [F

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayVal:[F

    return-object p0
.end method

.method static synthetic access$1100()[D
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayVal:[D

    return-object v0
.end method

.method static synthetic access$1102([D)[D
    .locals 0
    .param p0, "x0"    # [D

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayVal:[D

    return-object p0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayListVal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800()Ljava/util/HashSet;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$1900()Ljava/util/HashSet;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1902(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return v0
.end method

.method static synthetic access$2000()Ljava/util/HashSet;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return p0
.end method

.method static synthetic access$2100()Ljava/util/HashSet;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$2200()Ljava/util/HashSet;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2202(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashSet;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringHashSetVal:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    sput-wide p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide p0
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return p0
.end method

.method static synthetic access$500()D
    .locals 2

    .prologue
    sget-wide v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide v0
.end method

.method static synthetic access$502(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    sput-wide p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()[C
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->charArrayVal:[C

    return-object v0
.end method

.method static synthetic access$702([C)[C
    .locals 0
    .param p0, "x0"    # [C

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->charArrayVal:[C

    return-object p0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayVal:[I

    return-object v0
.end method

.method static synthetic access$802([I)[I
    .locals 0
    .param p0, "x0"    # [I

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayVal:[I

    return-object p0
.end method

.method static synthetic access$900()[J
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J

    return-object v0
.end method

.method static synthetic access$902([J)[J
    .locals 0
    .param p0, "x0"    # [J

    .prologue
    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J

    return-object p0
.end method

.method public static getType()I
    .locals 1

    .prologue
    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->type:I

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    return-void
.end method

.method private static setType(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCharArrayTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleArrayListTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleArrayTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleHashSetTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatArrayListTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatArrayTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatHashSetTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerArrayListTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerArrayTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerHashSetTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongArrayListTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongArrayTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongHashSetTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringArrayListTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringArrayTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringHashSetTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringTypeCode()I
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v4

    .restart local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .restart local v4    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v4

    if-ne p1, v4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .end local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_0
    return-void

    .restart local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
