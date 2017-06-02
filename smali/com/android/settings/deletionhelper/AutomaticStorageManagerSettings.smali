.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutomaticStorageManagerSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

.field private mDeletionHelper:Landroid/support/v7/preference/Preference;

.field private mFreedBytes:Landroid/support/v7/preference/Preference;

.field private mStorageManagerSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static daysValueToIndex(I[Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "indices"    # [Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 168
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "thisValue":I
    if-ne p0, v1, :cond_0

    .line 170
    return v0

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "thisValue":I
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private maybeShowWarning()V
    .locals 4

    .prologue
    .line 179
    const-string/jumbo v2, "ro.storage_manager.enabled"

    const/4 v3, 0x0

    .line 178
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 180
    .local v1, "warningUnneeded":Z
    if-eqz v1, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object v0

    .line 184
    .local v0, "fragment":Lcom/android/settings/deletionhelper/ActivationWarningFragment;
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "ActivationWarningFragment"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f0c0b9c

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x1ca

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    const-string/jumbo v8, "days"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/DropDownPreference;

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    .line 78
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string/jumbo v8, "freed_bytes"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/support/v7/preference/Preference;

    .line 82
    const-string/jumbo v8, "deletion_helper"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDeletionHelper:Landroid/support/v7/preference/Preference;

    .line 83
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDeletionHelper:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string/jumbo v8, "storage_manager_active"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mStorageManagerSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 86
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mStorageManagerSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 90
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "automatic_storage_manager_days_to_retain"

    .line 91
    const/16 v9, 0x5a

    .line 89
    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 93
    .local v7, "value":I
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a007a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "stringValues":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v7, v6}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->daysValueToIndex(I[Ljava/lang/String;)I

    move-result v9

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v8, "automatic_storage_manager_bytes_cleared"

    .line 96
    invoke-static {v1, v8, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 100
    .local v2, "freedBytes":J
    const-string/jumbo v8, "automatic_storage_manager_last_run"

    .line 99
    invoke-static {v1, v8, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 102
    .local v4, "lastRunMillis":J
    cmp-long v8, v2, v10

    if-eqz v8, :cond_0

    cmp-long v8, v4, v10

    if-nez v8, :cond_1

    .line 103
    :cond_0
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 75
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, "activity":Landroid/app/Activity;
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/support/v7/preference/Preference;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 108
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 109
    const/16 v10, 0x10

    invoke-static {v0, v4, v5, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 107
    const v10, 0x7f0c0ebf

    .line 106
    invoke-virtual {v0, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->addPreferencesFromResource(I)V

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "storage_manager_active"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 128
    .local v0, "checked":Z
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x1e9

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 132
    const-string/jumbo v4, "automatic_storage_manager_enabled"

    if-eqz v0, :cond_2

    move v1, v2

    .line 131
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->maybeShowWarning()V

    .line 144
    .end local v0    # "checked":Z
    :cond_0
    :goto_1
    return v2

    .line 125
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "days"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 140
    const-string/jumbo v3, "automatic_storage_manager_days_to_retain"

    .line 141
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 139
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 132
    .restart local v0    # "checked":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 154
    const-string/jumbo v1, "deletion_helper"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "automatic_storage_manager_enabled"

    .line 117
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 119
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mStorageManagerSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 114
    return-void

    .line 117
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isChecked":Z
    goto :goto_0
.end method
