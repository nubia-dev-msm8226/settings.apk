.class Lcom/android/settings/dashboard/SupportFragment$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SupportFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SupportFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-wrap1(Lcom/android/settings/dashboard/SupportFragment;)V

    .line 61
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-wrap1(Lcom/android/settings/dashboard/SupportFragment;)V

    .line 56
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment$1;->this$0:Lcom/android/settings/dashboard/SupportFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportFragment;->-wrap1(Lcom/android/settings/dashboard/SupportFragment;)V

    .line 66
    return-void
.end method
