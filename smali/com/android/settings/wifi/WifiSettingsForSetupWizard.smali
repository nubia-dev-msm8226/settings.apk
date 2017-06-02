.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizard;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private mEmptyFooter:Landroid/widget/TextView;

.field private mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

.field private mListLastEmpty:Z

.field private mMacAddress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    .line 44
    return-void
.end method

.method private updateMacAddress()V
    .locals 5

    .prologue
    .line 169
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddress:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "macAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 173
    .local v0, "connectionInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 178
    .end local v0    # "connectionInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "macAddress":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddress:Landroid/view/View;

    const v4, 0x7f110248

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 179
    .local v2, "macAddressTextView":Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v2    # "macAddressTextView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 180
    .restart local v2    # "macAddressTextView":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f0c068f

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "isSavedNetwork"    # Z

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 128
    .local v0, "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->networkSelected()V

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 126
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 142
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v2, 0x7f040126

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    .line 86
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 121
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->applyImmersiveFlags(Landroid/app/Dialog;)V

    .line 122
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 59
    const v5, 0x7f040127

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 58
    check-cast v5, Lcom/android/setupwizardlib/SetupWizardLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 62
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v6, 0x7f110247

    invoke-virtual {v5, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/LinearLayout;

    .line 64
    .local v2, "networksLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 67
    .local v3, "recyclerView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 68
    .local v4, "recyclerViewParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v6, 0x7f110246

    invoke-virtual {v5, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddress:Landroid/view/View;

    .line 76
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v5}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 77
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 79
    .local v0, "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->onNavigationBarCreated(Lcom/android/setupwizardlib/view/NavigationBar;)V

    .line 82
    .end local v0    # "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v5
.end method

.method public onWifiStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    .line 97
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 153
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    if-eqz v0, :cond_0

    .line 160
    if-eqz p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->showProgressBar()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->hideProgressBar()V

    goto :goto_0
.end method
