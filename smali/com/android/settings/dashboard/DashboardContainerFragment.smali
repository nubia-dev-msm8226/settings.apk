.class public final Lcom/android/settings/dashboard/DashboardContainerFragment;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;,
        Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;
    }
.end annotation


# instance fields
.field private mHeaderView:Landroid/view/View;

.field private mPagerAdapter:Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

.field private mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x1da

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardContainerFragment;->setHasOptionsMenu(Z)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 70
    const v2, 0x7f04005d

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "content":Landroid/view/View;
    const v2, 0x7f110081

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/RtlCompatibleViewPager;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 72
    new-instance v2, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardContainerFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 72
    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mPagerAdapter:Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    .line 74
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mPagerAdapter:Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 75
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 76
    new-instance v4, Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardContainerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-direct {v4, v2}, Lcom/android/settings/dashboard/DashboardContainerFragment$TabChangeListener;-><init>(Lcom/android/settings/SettingsActivity;)V

    .line 75
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/RtlCompatibleViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 80
    const-string/jumbo v3, ":settings:select_settings_tab"

    const-string/jumbo v4, "SUMMARY"

    .line 79
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "selectedTab":Ljava/lang/String;
    const-string/jumbo v2, "SUPPORT"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    .line 87
    :goto_0
    const v2, 0x7f04005e

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mHeaderView:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mHeaderView:Landroid/view/View;

    check-cast v2, Lcom/android/settings/widget/SlidingTabLayout;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SlidingTabLayout;->setViewPager(Lcom/android/settings/widget/RtlCompatibleViewPager;)V

    .line 89
    return-object v0

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 95
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mPagerAdapter:Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardContainerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardContainerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardContainerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setContentHeaderView(Landroid/view/View;)V

    .line 93
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method
