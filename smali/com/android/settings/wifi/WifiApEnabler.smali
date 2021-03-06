.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApEnabler$1;
    }
.end annotation


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mEnabling:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiApEnabler;II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/DataSaverBackend;Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSaverBackend"    # Lcom/android/settings/datausage/DataSaverBackend;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    .line 53
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 86
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    .line 87
    invoke-virtual {p3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 90
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private enableWifiSwitch()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 111
    const-string/jumbo v4, "airplane_mode_on"

    .line 110
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 112
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_2

    .line 113
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 109
    :goto_2
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v1

    .line 110
    goto :goto_0

    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    move v1, v2

    .line 113
    goto :goto_1

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private handleWifiApStateChanged(II)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    const v9, 0x7f0c05b6

    const v8, 0x7f0c0517

    const v7, 0x7f0c0516

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 159
    const v6, 0x7f0e001e

    .line 158
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 160
    .local v0, "enableWifiApSettingsExt":Z
    if-eqz v0, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v1, Lcom/android/settings/HotspotPreference;

    .line 162
    .local v1, "hSwitch":Lcom/android/settings/HotspotPreference;
    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 189
    if-ne p2, v4, :cond_1

    .line 190
    invoke-virtual {v1, v8}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 194
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 157
    .end local v1    # "hSwitch":Lcom/android/settings/HotspotPreference;
    :goto_1
    return-void

    .line 164
    .restart local v1    # "hSwitch":Lcom/android/settings/HotspotPreference;
    :pswitch_0
    invoke-virtual {v1, v9}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 165
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    .line 172
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Lcom/android/settings/wifi/WifiApEnabler;->postTurnOn(Landroid/content/Context;I)Z

    .line 173
    invoke-virtual {v1, v4}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 175
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v5}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_2

    .line 178
    :pswitch_2
    const v4, 0x7f0c05b7

    invoke-virtual {v1, v4}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    .line 179
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 180
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    .line 183
    :pswitch_3
    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 184
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/settings/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/settings/HotspotPreference;->setSummary(I)V

    goto :goto_0

    .line 197
    .end local v1    # "hSwitch":Lcom/android/settings/HotspotPreference;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 198
    .local v2, "sSwitch":Landroid/support/v14/preference/SwitchPreference;
    packed-switch p1, :pswitch_data_1

    .line 223
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 224
    if-ne p2, v4, :cond_4

    .line 225
    invoke-virtual {v2, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 229
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 200
    :pswitch_4
    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 201
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 208
    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v5}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_4

    .line 213
    :pswitch_6
    const v4, 0x7f0c05b7

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 214
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 215
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 218
    :pswitch_7
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {v2, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 198
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private postTurnOn(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "choice"    # I

    .prologue
    .line 234
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 235
    const v2, 0x7f0e0031

    .line 234
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "Hotspot_PostConfigure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "hotspot_postConfigure_intent":Landroid/content/Intent;
    const-string/jumbo v1, "choice"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnabling:Z

    .line 241
    .end local v0    # "hotspot_postConfigure_intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 133
    const/4 v5, 0x0

    .line 134
    .local v5, "wifiTethered":Z
    const/4 v4, 0x0

    .line 136
    .local v4, "wifiErrored":Z
    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    .local v0, "o":Ljava/lang/Object;
    move-object v2, v0

    .line 137
    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v1, v9, v6

    .line 139
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x1

    .line 138
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 142
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v0, p3, v7

    .restart local v0    # "o":Ljava/lang/Object;
    move-object v2, v0

    .line 143
    check-cast v2, Ljava/lang/String;

    .line 144
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_3
    if-ge v6, v10, :cond_4

    aget-object v1, v9, v6

    .line 145
    .restart local v1    # "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .line 144
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 142
    .end local v1    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 149
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_7

    .line 150
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 151
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 132
    .end local v3    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 152
    :cond_7
    if-eqz v4, :cond_6

    .line 153
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    const v7, 0x7f0c0516

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 100
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "Checked"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v0, Lcom/android/settings/HotspotPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 120
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 126
    const v2, 0x1040461

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c05b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 127
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 129
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
