.class public Landroid/app/NotificationBuilderExt;
.super Ljava/lang/Object;
.source "NotificationBuilderExt.java"


# static fields
.field public static SIM_SLOT_0:I

.field public static SIM_SLOT_1:I

.field public static SIM_SLOT_HIDE:I

.field public static SIM_SLOT_UNKNOWN:I


# instance fields
.field public mCircleProgressBarColor:I

.field public mCircleProgressRimColor:I

.field public mIconIntent:Landroid/app/PendingIntent;

.field public mInternalApp:I

.field public mIsCircleProgressBar:Z

.field public mNotificationBitmapIcon:Landroid/graphics/Bitmap;

.field public mNotificationIcon:I

.field public mProgressBarDrawable:I

.field public mRightIcon:I

.field public mSimSlot:I

.field public mSubTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/app/NotificationBuilderExt;->SIM_SLOT_0:I

    const/4 v0, 0x1

    sput v0, Landroid/app/NotificationBuilderExt;->SIM_SLOT_1:I

    const/16 v0, 0x63

    sput v0, Landroid/app/NotificationBuilderExt;->SIM_SLOT_UNKNOWN:I

    const/4 v0, -0x1

    sput v0, Landroid/app/NotificationBuilderExt;->SIM_SLOT_HIDE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/app/NotificationBuilderExt;->SIM_SLOT_HIDE:I

    iput v0, p0, Landroid/app/NotificationBuilderExt;->mSimSlot:I

    return-void
.end method


# virtual methods
.method public setCircleProgressBar(Z)V
    .locals 0
    .param p1, "isCircleProgressBar"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/app/NotificationBuilderExt;->mIsCircleProgressBar:Z

    return-void
.end method

.method public setCircleProgressBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Landroid/app/NotificationBuilderExt;->mCircleProgressBarColor:I

    return-void
.end method

.method public setCircleProgressRimColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Landroid/app/NotificationBuilderExt;->mCircleProgressRimColor:I

    return-void
.end method

.method public setIconIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "iconintent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Landroid/app/NotificationBuilderExt;->mIconIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setInternalApp(I)V
    .locals 0
    .param p1, "internalApp"    # I

    .prologue
    iput p1, p0, Landroid/app/NotificationBuilderExt;->mInternalApp:I

    return-void
.end method

.method public setNotificationBitmapIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Landroid/app/NotificationBuilderExt;->mNotificationBitmapIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setNotificationIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    iput p1, p0, Landroid/app/NotificationBuilderExt;->mNotificationIcon:I

    return-void
.end method

.method public setProgressBarDrawable(I)V
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    iput p1, p0, Landroid/app/NotificationBuilderExt;->mProgressBarDrawable:I

    return-void
.end method

.method public setRightIcon(I)V
    .locals 0
    .param p1, "rightIcon"    # I

    .prologue
    iput p1, p0, Landroid/app/NotificationBuilderExt;->mRightIcon:I

    return-void
.end method

.method public setSimSlot(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/app/NotificationBuilderExt;->mSimSlot:I

    :cond_0
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/app/NotificationBuilderExt;->mSubTitle:Ljava/lang/CharSequence;

    return-void
.end method
