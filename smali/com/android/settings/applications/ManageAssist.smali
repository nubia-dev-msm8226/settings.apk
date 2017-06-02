.class public Lcom/android/settings/applications/ManageAssist;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;
    }
.end annotation


# instance fields
.field private mContextPref:Landroid/support/v14/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

.field private mFlashPref:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11
    .param p1, "newAssitPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 178
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 179
    .local v5, "selected":I
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    .line 181
    .local v0, "appLabel":Ljava/lang/CharSequence;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0c0d45

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "title":Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0c0d46

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Lcom/android/settings/applications/ManageAssist$1;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/applications/ManageAssist$1;-><init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    .line 191
    .local v4, "onAgree":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 195
    const v8, 0x7f0c0d47

    .line 192
    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 196
    const v8, 0x7f0c0d48

    const/4 v9, 0x0

    .line 192
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 198
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 177
    return-void
.end method

.method private guardFlashPref()V
    .locals 5

    .prologue
    .line 128
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v4}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    .local v0, "assistant":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 131
    .local v1, "isContextChecked":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    .line 132
    .local v3, "willShowFlash":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    .line 134
    .local v2, "isSystemAssistant":Z
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .end local v2    # "isSystemAssistant":Z
    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 135
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 127
    return-void

    .line 134
    .restart local v2    # "isSystemAssistant":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private guardScreenshotPref()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 122
    .local v0, "isChecked":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assist_screenshot_enabled"

    const/4 v5, 0x1

    .line 121
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 123
    .local v1, "screenshotPrefWasSet":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 124
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .end local v1    # "screenshotPrefWasSet":Z
    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "screenshotPrefWasSet":Z
    goto :goto_0

    :cond_1
    move v1, v2

    .line 124
    goto :goto_1
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 172
    .local v1, "currentAssist":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    .line 173
    .local v0, "activeService":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 201
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    .line 140
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings/voice/VoiceInputListPreference;->refreshVoiceInputs()V

    .line 142
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 143
    .local v0, "currentAssist":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 144
    .local v1, "hasAssistant":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 153
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 159
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardScreenshotPref()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardFlashPref()V

    .line 138
    return-void

    .line 143
    .end local v1    # "hasAssistant":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    .restart local v1    # "hasAssistant":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 163
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_3
.end method


# virtual methods
.method synthetic -com_android_settings_applications_ManageAssist_lambda$1()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardScreenshotPref()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardFlashPref()V

    .line 0
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0xc9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->addPreferencesFromResource(I)V

    .line 58
    const-string/jumbo v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    .line 59
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string/jumbo v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    .line 62
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    const-string/jumbo v4, "assist_structure_enabled"

    .line 62
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    const-string/jumbo v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string/jumbo v0, "flash"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const-string/jumbo v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_structure_enabled"

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    .line 84
    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return v3

    .line 92
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_screenshot_enabled"

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    .line 93
    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    return v3

    .line 97
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_disclosure_enabled"

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 98
    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    return v3

    .line 102
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-ne p1, v3, :cond_9

    move-object v1, p2

    .line 103
    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "newAssitPackage":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 105
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 104
    if-eqz v3, :cond_7

    .line 106
    :cond_6
    const-string/jumbo v3, ""

    invoke-direct {p0, v3}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    .line 107
    return v2

    .line 110
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 114
    :goto_0
    return v2

    .line 112
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v1    # "newAssitPackage":Ljava/lang/String;
    :cond_9
    return v2
.end method
