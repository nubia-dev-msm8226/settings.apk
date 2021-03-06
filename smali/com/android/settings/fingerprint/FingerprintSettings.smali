.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SubSettings;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;,
        Lcom/android/settings/fingerprint/FingerprintSettings$LearnMoreSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method

.method public static getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 815
    const-string/jumbo v6, "fingerprint"

    .line 814
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 816
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 820
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 821
    .local v2, "fingerprintPreference":Landroid/support/v7/preference/Preference;
    const-string/jumbo v6, "fingerprint_settings"

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 822
    const v6, 0x7f0c0403

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 823
    invoke-virtual {v3, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    .line 824
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 826
    .local v1, "fingerprintCount":I
    :goto_0
    if-lez v1, :cond_2

    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 829
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 828
    const v5, 0x7f120004

    .line 827
    invoke-virtual {v6, v5, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 830
    const-class v5, Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "clazz":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v5, p1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 852
    return-object v2

    .line 817
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "fingerprintCount":I
    .end local v2    # "fingerprintPreference":Landroid/support/v7/preference/Preference;
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_0
    const-string/jumbo v5, "FingerprintSettings"

    const-string/jumbo v6, "No fingerprint hardware detected!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-object v7

    .restart local v2    # "fingerprintPreference":Landroid/support/v7/preference/Preference;
    .restart local v4    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_1
    move v1, v5

    .line 824
    goto :goto_0

    .line 833
    .restart local v1    # "fingerprintCount":I
    :cond_2
    const v5, 0x7f0c0408

    .line 832
    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 834
    const-class v5, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 116
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v1, 0x7f0c0403

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method
