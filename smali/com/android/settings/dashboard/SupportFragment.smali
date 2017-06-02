.class public final Lcom/android/settings/dashboard/SupportFragment;
.super Lcom/android/settings/InstrumentedFragment;
.source "SupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportFragment$1;
    }
.end annotation


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mActivity:Landroid/app/Activity;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContent:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

.field private mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SupportFragment;)Lcom/android/settings/dashboard/SupportItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/SupportFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportFragment;->hasInternet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/SupportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportFragment;->postConnectivityChanged()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/android/settings/dashboard/SupportFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SupportFragment$1;-><init>(Lcom/android/settings/dashboard/SupportFragment;)V

    .line 51
    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 47
    return-void
.end method

.method private hasInternet()Z
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 165
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postConnectivityChanged()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dashboard/SupportFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/SupportFragment$2;-><init>(Lcom/android/settings/dashboard/SupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x1db

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    .line 142
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportEligibleAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    .line 149
    .local v0, "vh":Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->onItemClicked(I)V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    .line 88
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 90
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 91
    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    .line 92
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 91
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/settings/dashboard/SupportItemAdapter;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/settings/overlay/SupportFeatureProvider;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    .line 94
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 93
    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 100
    const v0, 0x7f040140

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mContent:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mContent:Landroid/view/View;

    const v1, 0x7f110263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 102
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    .line 102
    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportFragment;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 113
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 112
    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 116
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 117
    const/16 v2, 0xc

    .line 116
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportFragment;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportFragment;->hasInternet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter;->setHasInternet(Z)V

    .line 109
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportFragment;->mSupportItemAdapter:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method
