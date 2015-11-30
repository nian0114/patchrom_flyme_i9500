.class public Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;
.super Ljava/lang/Object;
.source "TwGLWheelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutInfo"
.end annotation


# instance fields
.field public mAlpha:F

.field public mScale:F

.field public mX:F

.field public mY:F

.field public mZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    .line 824
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    .line 825
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    .line 826
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    .line 827
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    .line 828
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "scale"    # F
    .param p5, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    .line 824
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    .line 825
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    .line 826
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    .line 827
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    .line 831
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    .line 832
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    .line 833
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    .line 834
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    .line 835
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    .line 836
    return-void
.end method
