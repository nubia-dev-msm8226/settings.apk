.class public Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;
.super Ljava/lang/Object;
.source "RemoteSummaryProvider.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
.implements Lmokee/preference/RemotePreferenceManager$OnRemoteUpdateListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mKey:Ljava/lang/String;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mTile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mActivity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 38
    iput-object p3, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/settingslib/drawer/Tile;

    .line 39
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "org.cyanogenmod.settings.summary.key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;-><init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V

    return-object v0

    .line 32
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getReceiverIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mokee.intent.action.UPDATE_PREFERENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v3, v3, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, ":mk:pref_key"

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const-string/jumbo v1, ":mk:pref_summary"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lmokee/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lmokee/preference/RemotePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmokee/preference/RemotePreferenceManager;->attach(Ljava/lang/String;Lmokee/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    .line 43
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lmokee/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lmokee/preference/RemotePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmokee/preference/RemotePreferenceManager;->detach(Ljava/lang/String;Lmokee/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    goto :goto_0
.end method
