.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# instance fields
.field private mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

.field private mUnavailable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private getCellularToWlanValue()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    return v2

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cellular_to_wlan_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private ifNotifyConnect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 403
    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    .line 402
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initPreferences()V
    .locals 21

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 138
    .local v3, "context":Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v18, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "com.android.certinstaller"

    .line 140
    const-string/jumbo v19, "com.android.certinstaller.CertInstallerMain"

    .line 139
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string/jumbo v18, "install_as_uid"

    const/16 v19, 0x3f2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string/jumbo v18, "install_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 143
    .local v9, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 145
    const-string/jumbo v18, "enable_hs2"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    .line 146
    .local v4, "enableHs2":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 147
    const v19, 0x11200cc

    .line 146
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 148
    new-instance v18, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 161
    const-string/jumbo v19, "wifi_hotspot2_enabled"

    const/16 v20, 0x0

    .line 160
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 161
    const/16 v19, 0x1

    .line 160
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 168
    :cond_0
    :goto_1
    new-instance v13, Landroid/content/Intent;

    .line 169
    const-class v18, Lcom/android/settings/Settings$WifiP2pSettingsActivity;

    .line 168
    move-object/from16 v0, v18

    invoke-direct {v13, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v13, "wifiDirectIntent":Landroid/content/Intent;
    const-string/jumbo v18, "wifi_direct"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    .line 171
    .local v14, "wifiDirectPref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v14, v13}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 174
    const-string/jumbo v18, "wps_push_button"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    .line 175
    .local v17, "wpsPushPref":Landroid/support/v7/preference/Preference;
    new-instance v18, Lcom/android/settings/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    const-string/jumbo v18, "wps_pin_entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    .line 185
    .local v16, "wpsPinPref":Landroid/support/v7/preference/Preference;
    new-instance v18, Lcom/android/settings/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    const-string/jumbo v18, "wifi_priority_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 195
    .local v10, "prioritySettingPref":Landroid/support/v7/preference/Preference;
    if-eqz v10, :cond_b

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 203
    :cond_1
    :goto_2
    const-string/jumbo v18, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    .line 204
    .local v5, "fbandPref":Landroid/support/v7/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v11

    .line 207
    .local v11, "value":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_c

    .line 208
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/support/v7/preference/Preference;I)V

    .line 219
    .end local v11    # "value":I
    :cond_2
    :goto_3
    const-string/jumbo v18, "wifi_countrycode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    .line 220
    .local v2, "ccodePref":Landroid/support/v7/preference/ListPreference;
    if-eqz v2, :cond_3

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 222
    const v19, 0x7f0e0040

    .line 221
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 223
    .local v6, "hideWifiRegion":Z
    if-eqz v6, :cond_e

    .line 224
    const-string/jumbo v18, "wifi_countrycode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->removePreference(Ljava/lang/String;)V

    .line 237
    .end local v6    # "hideWifiRegion":Z
    :cond_3
    :goto_4
    const-string/jumbo v18, "auto_connect_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/CheckBoxPreference;

    .line 236
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0018

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    :cond_4
    :goto_5
    const-string/jumbo v18, "cellular_to_wlan"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/ListPreference;

    .line 247
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0019

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getCellularToWlanValue()I

    move-result v11

    .line 252
    .restart local v11    # "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 261
    .end local v11    # "value":I
    :cond_5
    :goto_6
    const-string/jumbo v18, "wlan_to_cellular_hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/support/v7/preference/CheckBoxPreference;

    .line 262
    .local v15, "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    if-eqz v15, :cond_6

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e001c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isWlanToCellHintEnable()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 265
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    :cond_6
    :goto_7
    const-string/jumbo v18, "notify_ap_connected"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/CheckBoxPreference;

    .line 273
    .local v8, "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    if-eqz v8, :cond_7

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e001a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->ifNotifyConnect()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 282
    :cond_7
    :goto_8
    const-string/jumbo v18, "cellular_to_wlan_hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e001b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isCellularToWlanHintEnable()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    :cond_8
    :goto_9
    return-void

    .line 160
    .end local v2    # "ccodePref":Landroid/support/v7/preference/ListPreference;
    .end local v5    # "fbandPref":Landroid/support/v7/preference/ListPreference;
    .end local v8    # "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    .end local v10    # "prioritySettingPref":Landroid/support/v7/preference/Preference;
    .end local v13    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v14    # "wifiDirectPref":Landroid/support/v7/preference/Preference;
    .end local v15    # "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    .end local v16    # "wpsPinPref":Landroid/support/v7/preference/Preference;
    .end local v17    # "wpsPushPref":Landroid/support/v7/preference/Preference;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 163
    :cond_a
    if-eqz v4, :cond_0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 200
    .restart local v10    # "prioritySettingPref":Landroid/support/v7/preference/Preference;
    .restart local v13    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v14    # "wifiDirectPref":Landroid/support/v7/preference/Preference;
    .restart local v16    # "wpsPinPref":Landroid/support/v7/preference/Preference;
    .restart local v17    # "wpsPushPref":Landroid/support/v7/preference/Preference;
    :cond_b
    const-string/jumbo v18, "AdvancedWifiSettings"

    const-string/jumbo v19, "Fail to get priority pref..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 211
    .restart local v5    # "fbandPref":Landroid/support/v7/preference/ListPreference;
    .restart local v11    # "value":I
    :cond_c
    const-string/jumbo v18, "AdvancedWifiSettings"

    const-string/jumbo v19, "Failed to fetch frequency band"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 214
    .end local v11    # "value":I
    :cond_d
    if-eqz v5, :cond_2

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 226
    .restart local v2    # "ccodePref":Landroid/support/v7/preference/ListPreference;
    .restart local v6    # "hideWifiRegion":Z
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v12

    .line 228
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_f

    .line 229
    invoke-virtual {v2, v12}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 231
    :cond_f
    const-string/jumbo v18, "AdvancedWifiSettings"

    const-string/jumbo v19, "Failed to fetch country code"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 243
    .end local v6    # "hideWifiRegion":Z
    .end local v12    # "value":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_5

    .line 256
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6

    .line 267
    .restart local v15    # "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_7

    .line 278
    .restart local v8    # "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_8

    .line 288
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_9
.end method

.method private isAutoConnectEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 408
    const-string/jumbo v2, "wifi_auto_connect_type"

    .line 407
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCellularToWlanHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 387
    const-string/jumbo v2, "cellular_to_wlan_hint"

    .line 386
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWlanToCellHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 392
    const-string/jumbo v2, "wlan_to_cellular_hint"

    .line 391
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setApConnectedNotify(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 448
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 449
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    .line 449
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 447
    return-void

    .line 448
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setAutoConnectTypeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 412
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 413
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 414
    const-string/jumbo v2, "wifi_auto_connect_type"

    .line 413
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    return-void

    .line 412
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setCellToWlanType(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0e94

    .line 459
    const/4 v3, 0x0

    .line 458
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCellularToWlanHintEnable(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 442
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 443
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 444
    const-string/jumbo v2, "cellular_to_wlan_hint"

    .line 443
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    return-void

    .line 442
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setWlanToCellularHintEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 396
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 397
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 398
    const-string/jumbo v2, "wlan_to_cellular_hint"

    .line 397
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    return-void

    .line 396
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private updateAutoConnectPref(Z)V
    .locals 1
    .param p1, "isAutoMode"    # Z

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 474
    return-void
.end method

.method private updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method

.method private updateCellularToWifiPrefs(Z)V
    .locals 3
    .param p1, "isAutoEnabled"    # Z

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 467
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 469
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 463
    return-void

    .line 468
    .end local v0    # "defaultValue":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private updateCellularToWlanHintPref(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 438
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 436
    return-void
.end method

.method private updateFrequencyBandSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0598

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 118
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUnavailable:Z

    .line 111
    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 107
    :goto_0
    return-void

    .line 113
    :cond_0
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 317
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v7, "frequency_band"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 322
    .local v6, "value":I
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x1

    invoke-virtual {v7, v6, v10}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 323
    invoke-direct {p0, p1, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/support/v7/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v6    # "value":I
    :cond_0
    const-string/jumbo v7, "wifi_countrycode"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 333
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v7, v11}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :cond_1
    const-string/jumbo v7, "wlan_to_cellular_hint"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p2

    .line 342
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 343
    .local v1, "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setWlanToCellularHintEnable(Z)V

    .line 346
    .end local v1    # "checked":Z
    :cond_2
    const-string/jumbo v7, "auto_connect_type"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 347
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 348
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 349
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWifiPrefs(Z)V

    .line 350
    if-nez v1, :cond_3

    .line 351
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 355
    .end local v1    # "checked":Z
    :cond_3
    const-string/jumbo v7, "cellular_to_wlan"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, p2

    .line 356
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 357
    .restart local v6    # "value":I
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setCellToWlanType(I)V

    .line 358
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 359
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v7, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 360
    if-nez v6, :cond_7

    move v7, v8

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateAutoConnectPref(Z)V

    .line 361
    if-eqz v6, :cond_4

    .line 362
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 366
    .end local v6    # "value":I
    :cond_4
    const-string/jumbo v7, "notify_ap_connected"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 367
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 368
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setApConnectedNotify(Z)V

    .line 371
    .end local v1    # "checked":Z
    :cond_5
    const-string/jumbo v7, "cellular_to_wlan_hint"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 372
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 373
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 374
    if-nez v1, :cond_6

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0e90

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 375
    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 381
    .end local v1    # "checked":Z
    :cond_6
    return v8

    .line 324
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 325
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c02dc

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 327
    return v9

    .line 334
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 335
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c02a0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 337
    return v9

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "value":I
    :cond_7
    move v7, v9

    .line 360
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 129
    :cond_0
    return-void
.end method
