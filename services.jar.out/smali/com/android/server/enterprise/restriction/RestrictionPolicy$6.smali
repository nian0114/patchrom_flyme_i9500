.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$102(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$102(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method
