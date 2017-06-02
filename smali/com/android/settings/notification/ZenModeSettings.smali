.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"


# instance fields
.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPrioritySettings:Landroid/support/v7/preference/Preference;

.field private mVisualSettings:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 2
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "categoryType"    # I

    .prologue
    const/4 v0, 0x0

    .line 130
    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEffectSuppressed(I)Z
    .locals 2
    .param p1, "effect"    # I

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateControls()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateVisualSettingsSummary()V

    .line 79
    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v1, 0x7f0c0cc7

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const v1, 0x7f0c0282

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const v1, 0x7f0c0283

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v1, :cond_4

    .line 95
    const v1, 0x7f0c0287

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 101
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v1, :cond_5

    .line 102
    const v1, 0x7f0c0284

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->join(Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    return-void

    .line 97
    :cond_4
    const v1, 0x7f0c0288

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_5
    const v1, 0x7f0c0285

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    const v1, 0x7f0c0286

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateVisualSettingsSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 113
    const v1, 0x7f0c0cdd

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    .line 114
    if-eqz v1, :cond_1

    .line 116
    const v1, 0x7f0c0ce0

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    return-void

    .line 117
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const v1, 0x7f0c0cde

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const v1, 0x7f0c0cdf

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f0c0b98

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/support/v7/preference/Preference;

    .line 51
    const-string/jumbo v1, "visual_interruptions_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/support/v7/preference/Preference;

    .line 52
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 56
    :cond_0
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 69
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 74
    return-void
.end method
