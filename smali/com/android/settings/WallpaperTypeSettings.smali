.class public Lcom/android/settings/WallpaperTypeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WallpaperTypeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WallpaperTypeSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/settings/WallpaperTypeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/WallpaperTypeSettings$1;-><init>()V

    .line 81
    sput-object v0, Lcom/android/settings/WallpaperTypeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private populateWallpaperTypes()V
    .locals 12

    .prologue
    .line 58
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 61
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/high16 v9, 0x10000

    .line 60
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 63
    .local v8, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 64
    .local v4, "parent":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 66
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 67
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 68
    .local v6, "pref":Landroid/support/v7/preference/Preference;
    const v9, 0x7f0400e3

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 69
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 70
    .local v7, "prefIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    .line 71
    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 70
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 74
    .local v3, "label":Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 75
    :cond_0
    invoke-virtual {v6, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 56
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v6    # "pref":Landroid/support/v7/preference/Preference;
    .end local v7    # "prefIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0c0b97

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x65

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/android/settings/WallpaperTypeSettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/WallpaperTypeSettings;->populateWallpaperTypes()V

    .line 49
    return-void
.end method
