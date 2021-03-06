.class Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 1032
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1033
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1034
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1035
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1036
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 1032
    return-void
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0dda

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 1063
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1061
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1053
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1056
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1050
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
