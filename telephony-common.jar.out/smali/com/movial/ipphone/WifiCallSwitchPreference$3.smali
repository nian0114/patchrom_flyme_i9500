.class Lcom/movial/ipphone/WifiCallSwitchPreference$3;
.super Ljava/lang/Object;
.source "WifiCallSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/movial/ipphone/WifiCallSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-virtual {v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/movial/ipphone/WifiCallSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->access$100(Lcom/movial/ipphone/WifiCallSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-virtual {v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->onSwitchClicked()V

    goto :goto_0
.end method
