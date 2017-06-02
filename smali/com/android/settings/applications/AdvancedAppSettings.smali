.class public Lcom/android/settings/applications/AdvancedAppSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AdvancedAppSettings$1;,
        Lcom/android/settings/applications/AdvancedAppSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppDomainURLsPreference:Landroid/support/v7/preference/Preference;

.field private mAppPermsPreference:Landroid/support/v7/preference/Preference;

.field private mHighPowerPreference:Landroid/support/v7/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSystemAlertWindowPreference:Landroid/support/v7/preference/Preference;

.field private mWriteSettingsPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/android/settings/applications/AdvancedAppSettings$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AdvancedAppSettings$2;-><init>()V

    .line 146
    sput-object v0, Lcom/android/settings/applications/AdvancedAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 127
    new-instance v0, Lcom/android/settings/applications/AdvancedAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AdvancedAppSettings$1;-><init>(Lcom/android/settings/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 40
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x82

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AdvancedAppSettings;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "manage_perms"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 66
    .local v2, "permissions":Landroid/support/v7/preference/Preference;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    .line 73
    .local v0, "applicationsState":Lcom/android/settingslib/applications/ApplicationsState;
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 75
    const-string/jumbo v3, "manage_perms"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/support/v7/preference/Preference;

    .line 76
    const-string/jumbo v3, "domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mAppDomainURLsPreference:Landroid/support/v7/preference/Preference;

    .line 77
    const-string/jumbo v3, "high_power_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mHighPowerPreference:Landroid/support/v7/preference/Preference;

    .line 78
    const-string/jumbo v3, "system_alert_window"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/support/v7/preference/Preference;

    .line 79
    const-string/jumbo v3, "write_settings_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 61
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 108
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 88
    return-void
.end method
