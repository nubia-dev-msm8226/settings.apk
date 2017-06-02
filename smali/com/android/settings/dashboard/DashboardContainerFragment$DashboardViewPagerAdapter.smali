.class final Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DashboardContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashboardViewPagerAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

.field private final mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "viewPager"    # Lcom/android/settings/widget/RtlCompatibleViewPager;

    .prologue
    .line 111
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 112
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 115
    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 110
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 139
    const-string/jumbo v1, "Position %d does not map to a valid dashboard fragment"

    .line 138
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 138
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_0
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardSummary;-><init>()V

    return-object v0

    .line 135
    :pswitch_1
    new-instance v0, Lcom/android/settings/dashboard/SupportFragment;

    invoke-direct {v0}, Lcom/android/settings/dashboard/SupportFragment;-><init>()V

    return-object v0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 126
    invoke-super {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0e5c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0e5d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result v0

    .line 146
    invoke-super {p0, p1, v0}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
