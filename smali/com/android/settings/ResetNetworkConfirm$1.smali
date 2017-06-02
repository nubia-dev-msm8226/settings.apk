.class Lcom/android/settings/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    iget-object v8, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v8}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 73
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v8, "connectivity"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 74
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 79
    :cond_1
    const-string/jumbo v8, "wifi"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 78
    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 80
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v7, :cond_2

    .line 81
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 85
    :cond_2
    const-string/jumbo v8, "phone"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 84
    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 86
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_3

    .line 87
    iget-object v8, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v8}, Lcom/android/settings/ResetNetworkConfirm;->-get0(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 91
    :cond_3
    const-string/jumbo v8, "netpolicy"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 90
    check-cast v4, Landroid/net/NetworkPolicyManager;

    .line 92
    .local v4, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v4, :cond_4

    .line 93
    iget-object v8, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v8}, Lcom/android/settings/ResetNetworkConfirm;->-get0(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "subscriberId":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 98
    .end local v5    # "subscriberId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "bluetooth"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 99
    .local v1, "btManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v1, :cond_5

    .line 100
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 101
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 106
    .end local v0    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_5
    invoke-static {v3}, Lcom/android/ims/ImsManager;->factoryReset(Landroid/content/Context;)V

    .line 108
    const v8, 0x7f0c0742

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 65
    return-void
.end method
