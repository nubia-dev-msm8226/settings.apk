.class public abstract Lcom/android/settings/InstrumentedFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "InstrumentedFragment.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 79
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/InstrumentedFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings/InstrumentedFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/android/settings/overlay/SurveyFeatureProvider;->unregisterReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    .line 81
    iput-object v2, p0, Lcom/android/settings/InstrumentedFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 54
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getMetricsCategory()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 59
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;

    move-result-object v2

    .line 62
    .local v2, "provider":Lcom/android/settings/overlay/SurveyFeatureProvider;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedFragment;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/settings/overlay/SurveyFeatureProvider;->getSurveyId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "id":Ljava/lang/String;
    invoke-interface {v2, v0, v1}, Lcom/android/settings/overlay/SurveyFeatureProvider;->getSurveyExpirationDate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 67
    invoke-interface {v2, v0}, Lcom/android/settings/overlay/SurveyFeatureProvider;->createAndRegisterReceiver(Landroid/app/Activity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/InstrumentedFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-interface {v2, v0, v1, v8}, Lcom/android/settings/overlay/SurveyFeatureProvider;->downloadSurvey(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "provider":Lcom/android/settings/overlay/SurveyFeatureProvider;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "provider":Lcom/android/settings/overlay/SurveyFeatureProvider;
    :cond_1
    invoke-interface {v2, v0, v1}, Lcom/android/settings/overlay/SurveyFeatureProvider;->showSurveyIfAvailable(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0
.end method
