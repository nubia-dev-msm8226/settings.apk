.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$1;,
        Lcom/android/settings/location/LocationSettings$2;,
        Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;,
        Lcom/android/settings/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private injector:Lcom/android/settings/location/SettingsInjector;

.field private mAgpsEnabled:Z

.field private mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

.field private mLocationMode:Landroid/support/v7/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    invoke-static {p0}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 565
    new-instance v0, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$2;-><init>()V

    .line 564
    sput-object v0, Lcom/android/settings/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 504
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    .line 503
    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 90
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 371
    const-string/jumbo v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 372
    .local v0, "categoryLocationServices":Landroid/support/v7/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    .line 375
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz p3, :cond_0

    .line 376
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 375
    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 378
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    new-instance v3, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 393
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 369
    :goto_1
    return-void

    .line 376
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 396
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 192
    .local v0, "entry":Landroid/support/v7/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 183
    .end local v0    # "entry":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 8
    .param p1, "mainSwitchOn"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 333
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v5, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 338
    const-string/jumbo v6, "no_share_location"

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 337
    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 339
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v2

    .line 340
    .local v2, "isRestrictedByBase":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 341
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 342
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 332
    :goto_0
    return-void

    .line 344
    :cond_1
    move v1, p1

    .line 345
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v5, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 347
    const v3, 0x7f0c0ce5

    .line 348
    .local v3, "summaryResId":I
    if-nez p1, :cond_2

    .line 349
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 357
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v5, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 352
    if-eqz v2, :cond_4

    .line 353
    const v3, 0x7f0c0ce5

    .line 354
    :goto_3
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 355
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 354
    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 351
    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 353
    :cond_4
    const v3, 0x7f0c0ce4

    goto :goto_3
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 198
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    .line 199
    .local v9, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v9, :cond_0

    .line 200
    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 202
    :cond_0
    const v10, 0x7f080037

    invoke-virtual {p0, v10}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    .line 205
    invoke-direct {p0, v9}, Lcom/android/settings/location/LocationSettings;->setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 206
    const-string/jumbo v10, "location_mode"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    .line 207
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    .line 208
    new-instance v13, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v13, p0, v0}, Lcom/android/settings/location/LocationSettings$4;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V

    .line 207
    invoke-virtual {v10, v13}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 220
    const v13, 0x7f0e0014

    .line 219
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/location/LocationSettings;->mAgpsEnabled:Z

    .line 221
    const-string/jumbo v10, "assisted_gps"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    .line 222
    iget-boolean v10, p0, Lcom/android/settings/location/LocationSettings;->mAgpsEnabled:Z

    if-nez v10, :cond_1

    .line 223
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 226
    :cond_1
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v10, :cond_2

    .line 227
    iget-object v13, p0, Lcom/android/settings/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v14, "assisted_gps_enabled"

    .line 227
    invoke-static {v10, v14, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_3

    move v10, v11

    :goto_0
    invoke-virtual {v13, v10}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    :cond_2
    const-string/jumbo v10, "recent_location_requests"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    .line 231
    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    .line 233
    new-instance v4, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v4, v0}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    .line 234
    .local v4, "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    invoke-virtual {v4}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v6

    .line 235
    .local v6, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v5, "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 237
    .local v7, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    new-instance v3, Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    .line 238
    iget-object v11, v7, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    .line 237
    invoke-direct {v3, v10, v11}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 239
    .local v3, "pref":Lcom/android/settings/DimmableIconPreference;
    iget-object v10, v7, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v10}, Lcom/android/settings/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v10, v7, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v10}, Lcom/android/settings/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    iget-boolean v10, v7, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    if-eqz v10, :cond_4

    .line 242
    const v10, 0x7f0c0780

    invoke-virtual {v3, v10}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    .line 247
    :goto_2
    new-instance v10, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;

    iget-object v11, v7, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object v13, v7, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v10, p0, v11, v13}, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 246
    invoke-virtual {v3, v10}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 248
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "pref":Lcom/android/settings/DimmableIconPreference;
    .end local v4    # "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    .end local v5    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    .end local v6    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .end local v7    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .end local v8    # "request$iterator":Ljava/util/Iterator;
    :cond_3
    move v10, v12

    .line 227
    goto :goto_0

    .line 244
    .restart local v3    # "pref":Lcom/android/settings/DimmableIconPreference;
    .restart local v4    # "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    .restart local v5    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    .restart local v6    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .restart local v7    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .restart local v8    # "request$iterator":Ljava/util/Iterator;
    :cond_4
    const v10, 0x7f0c0781

    invoke-virtual {v3, v10}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    goto :goto_2

    .line 251
    .end local v3    # "pref":Lcom/android/settings/DimmableIconPreference;
    .end local v7    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 252
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0, v5, v10}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 262
    :goto_3
    const/4 v2, 0x0

    .line 266
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v10, :cond_6

    .line 267
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v11, "no_share_location"

    iget-object v12, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v10

    .line 266
    if-eqz v10, :cond_6

    .line 268
    const/4 v2, 0x1

    .line 270
    :cond_6
    invoke-direct {p0, v0, v9, v2}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    .line 273
    return-object v9

    .line 255
    .end local v2    # "lockdownOnLocationAccess":Z
    :cond_7
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, "banner":Landroid/support/v7/preference/Preference;
    const v10, 0x7f04009e

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 257
    const v10, 0x7f0c077e

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 258
    invoke-virtual {v1, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 259
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3
.end method

.method private static getLocationString(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 428
    packed-switch p0, :pswitch_data_0

    .line 438
    const/4 v0, 0x0

    return v0

    .line 430
    :pswitch_0
    const v0, 0x7f0c077c

    return v0

    .line 432
    :pswitch_1
    const v0, 0x7f0c077b

    return v0

    .line 434
    :pswitch_2
    const v0, 0x7f0c077a

    return v0

    .line 436
    :pswitch_3
    const v0, 0x7f0c0779

    return v0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isManagedProfileRestrictedByBase()Z
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    return v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v1, "no_share_location"

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 321
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 323
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 324
    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 317
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    .line 326
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 328
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 424
    const v0, 0x7f0c0baf

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 142
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 144
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 145
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 146
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 147
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 138
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 402
    const/4 v0, 0x1

    const v1, 0x7f0c0786

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 404
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 401
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 151
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 443
    invoke-static {p1}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v3

    .line 444
    .local v3, "modeDescription":I
    if-eqz v3, :cond_0

    .line 445
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 451
    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 452
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 453
    const-string/jumbo v7, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 452
    invoke-static {v4, v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 454
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 455
    const-string/jumbo v7, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 454
    invoke-static {v4, v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 458
    .local v2, "hasBaseUserRestriction":Z
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 459
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 463
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_7

    :cond_1
    :goto_2
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 464
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 466
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eq v1, v4, :cond_3

    .line 468
    iget-boolean v4, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v4, :cond_2

    .line 469
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 471
    :cond_2
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 472
    iget-boolean v4, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v4, :cond_3

    .line 473
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 477
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    .line 481
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v4}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 442
    return-void

    .line 451
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v1    # "enabled":Z
    .end local v2    # "hasBaseUserRestriction":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 461
    .restart local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .restart local v2    # "hasBaseUserRestriction":Z
    :cond_5
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p2, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_3

    :cond_7
    move v5, v6

    .line 463
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 410
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 418
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 413
    :pswitch_0
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 414
    const v3, 0x7f0c0787

    .line 415
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 412
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 416
    const/4 v1, 0x1

    return v1

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 180
    :cond_1
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 167
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string/jumbo v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v8, 0x1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_4

    .line 280
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 281
    const-string/jumbo v7, "assisted_gps_supl_host"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 283
    const-string/jumbo v7, "assisted_gps_supl_port"

    .line 282
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 284
    :cond_0
    const/4 v5, 0x0

    .line 286
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 287
    .local v4, "properties":Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/etc/gps.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v3, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 290
    .end local v5    # "stream":Ljava/io/FileInputStream;
    const-string/jumbo v7, "assisted_gps_supl_host"

    .line 291
    const-string/jumbo v9, "SUPL_HOST"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 290
    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    const-string/jumbo v7, "assisted_gps_supl_port"

    .line 293
    const-string/jumbo v9, "SUPL_PORT"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    if-eqz v6, :cond_1

    .line 301
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string/jumbo v9, "assisted_gps_enabled"

    .line 309
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    .line 308
    :goto_1
    invoke-static {v0, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    return v8

    .line 302
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 294
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 295
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "LocationSettings"

    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 295
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    if-eqz v5, :cond_1

    .line 301
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 302
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 299
    :goto_3
    if-eqz v5, :cond_2

    .line 301
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 298
    :cond_2
    :goto_4
    throw v7

    .line 302
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 309
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 312
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v7

    return v7

    .line 298
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 294
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 157
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 489
    if-eqz p2, :cond_0

    .line 490
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    .line 488
    :goto_0
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
