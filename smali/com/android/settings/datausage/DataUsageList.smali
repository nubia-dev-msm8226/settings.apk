.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageList$1;,
        Lcom/android/settings/datausage/DataUsageList$2;,
        Lcom/android/settings/datausage/DataUsageList$3;,
        Lcom/android/settings/datausage/DataUsageList$4;
    }
.end annotation


# static fields
.field private static mSelectLeft:J

.field private static mSelectRight:J


# instance fields
.field private mApps:Landroid/support/v7/preference/PreferenceGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mDataSelectionEnable:Z

.field private mHeader:Landroid/view/View;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowDataUsage:Z

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/support/v7/preference/Preference;

.field private mUsageSummary:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/DataUsageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    return v0
.end method

.method static synthetic -get6()J
    .locals 2

    sget-wide v0, Lcom/android/settings/datausage/DataUsageList;->mSelectLeft:J

    return-wide v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Lcom/android/settings/datausage/DataUsageList;->mSelectRight:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/DataUsageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mShowDataUsage:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataUsageList;J)V
    .locals 1
    .param p1, "limitBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/DataUsageList;J)V
    .locals 1
    .param p1, "warningBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/settingslib/AppItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settingslib/AppItem;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/datausage/DataUsageList;Z)V
    .locals 0
    .param p1, "refreshCycle"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mShowDataUsage:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mMobileDataEnabled:Ljava/util/Map;

    .line 582
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 611
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 645
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 681
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 80
    return-void
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 9
    .param p0, "collapseKey"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p3, "itemCategory"    # I
    .param p5, "largest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 516
    .local v1, "uid":I
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    .line 517
    .local v0, "item":Lcom/android/settingslib/AppItem;
    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/android/settingslib/AppItem;

    .end local v0    # "item":Lcom/android/settingslib/AppItem;
    invoke-direct {v0, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 519
    .restart local v0    # "item":Lcom/android/settingslib/AppItem;
    iput p3, v0, Lcom/android/settingslib/AppItem;->category:I

    .line 520
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget v2, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 524
    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    .line 525
    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 536
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 537
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 540
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 542
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 544
    return v8

    .line 547
    :cond_0
    const/4 v1, 0x1

    .line 548
    .local v1, "isReady":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "isReady":Z
    .local v4, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 549
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v1, v7

    .local v1, "isReady":Z
    goto :goto_0

    .end local v1    # "isReady":Z
    :cond_1
    move v7, v8

    goto :goto_1

    .line 552
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    .line 559
    .local v2, "retVal":Z
    :goto_2
    return v2

    .end local v2    # "retVal":Z
    :cond_3
    move v2, v8

    .line 552
    goto :goto_2
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 717
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy(Z)V

    .line 714
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 711
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy(Z)V

    .line 708
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/settingslib/AppItem;

    .prologue
    .line 499
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "app_item"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 501
    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 502
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0d15

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 498
    return-void
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 265
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mBinding:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 273
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 274
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v5, v6}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 273
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 279
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mBinding:Z

    .line 281
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-nez v4, :cond_2

    .line 282
    const v4, 0x7f0d007e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 283
    .local v2, "seriesColor":I
    iget v4, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 284
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 285
    iget v5, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 284
    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 286
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_1

    .line 287
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v2

    .line 290
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 291
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 290
    const/16 v7, 0x7f

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 292
    .local v1, "secondaryColor":I
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v4, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 295
    .end local v1    # "secondaryColor":I
    .end local v2    # "seriesColor":I
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mShowDataUsage:Z

    if-nez v4, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 264
    :cond_3
    return-void
.end method

.method private updateDetailData()V
    .locals 24

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v5, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/datausage/DataUsageList;->mShowDataUsage:Z

    if-eqz v5, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getInspectLeft()J

    move-result-wide v6

    .line 356
    .local v6, "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getInspectRight()J

    move-result-wide v8

    .line 357
    .local v8, "end":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getInspectLeft()J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings/datausage/DataUsageList;->mSelectLeft:J

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getInspectRight()J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings/datausage/DataUsageList;->mSelectRight:J

    .line 359
    const-string/jumbo v5, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Will get left and right data here:"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v19, "-->"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 360
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    .line 359
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 371
    .local v10, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 373
    .local v4, "context":Landroid/content/Context;
    const/4 v13, 0x0

    .line 374
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v5, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v5, v5, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 379
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v6, v7, v8, v9}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v19, v0

    .line 379
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v12, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 382
    if-eqz v13, :cond_4

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v20, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v22, v0

    add-long v16, v20, v22

    .line 383
    .local v16, "totalBytes":J
    :goto_1
    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 384
    .local v18, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v12, v19

    const v19, 0x7f0c0e19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/datausage/DataUsageList;->mShowDataUsage:Z

    if-eqz v5, :cond_1

    .line 387
    const v15, 0x7f0c0ae7

    .line 388
    .local v15, "summaryRes":I
    sget-wide v20, Lcom/android/settings/datausage/DataUsageList;->mSelectLeft:J

    sget-wide v22, Lcom/android/settings/datausage/DataUsageList;->mSelectRight:J

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v14

    .line 389
    .local v14, "rangePhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v12, v19

    const/16 v19, 0x1

    aput-object v14, v12, v19

    const v19, 0x7f0c0ae7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    .end local v14    # "rangePhrase":Ljava/lang/String;
    .end local v15    # "summaryRes":I
    :cond_1
    return-void

    .line 362
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v16    # "totalBytes":J
    .end local v18    # "totalPhrase":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getInspectStart()J

    move-result-wide v6

    .line 363
    .restart local v6    # "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getInspectEnd()J

    move-result-wide v8

    .restart local v8    # "end":J
    goto/16 :goto_0

    .line 366
    .end local v6    # "start":J
    .end local v8    # "end":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v6

    .line 367
    .restart local v6    # "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v8

    .restart local v8    # "end":J
    goto/16 :goto_0

    .line 382
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v10    # "now":J
    :cond_4
    const-wide/16 v16, 0x0

    goto :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 5
    .param p1, "refreshCycle"    # Z

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f11008b

    .line 305
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 307
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 315
    new-instance v2, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 314
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :goto_1
    if-eqz p1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    .line 304
    :cond_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_0

    .line 326
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v1, :cond_3

    .line 327
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 332
    :goto_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 31
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 397
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    const-wide/16 v8, 0x0

    .line 400
    .local v8, "largest":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 401
    .local v10, "currentUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v30

    .line 402
    .local v30, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v25

    .line 403
    .local v25, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 405
    .local v4, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 406
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 408
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string/jumbo v6, "com.android.dialer"

    const/4 v12, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const/4 v5, 0x0

    .line 414
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v27

    .line 415
    .local v27, "size":I
    :goto_1
    const/16 v19, 0x0

    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 416
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 419
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    iget v0, v5, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v28, v0

    .line 423
    .local v28, "uid":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    .line 424
    .local v29, "userId":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 425
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v29

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 426
    move/from16 v0, v29

    if-eq v0, v10, :cond_0

    .line 428
    invoke-static/range {v29 .. v29}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .line 429
    .local v3, "managedKey":I
    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    .line 433
    .end local v3    # "managedKey":I
    :cond_0
    move/from16 v11, v28

    .line 434
    .local v11, "collapseKey":I
    const/4 v14, 0x2

    .local v14, "category":I
    :goto_3
    move-object v12, v4

    move-object v13, v5

    move-object v15, v7

    move-wide/from16 v16, v8

    .line 458
    invoke-static/range {v11 .. v17}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    .line 415
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 409
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v19    # "i":I
    .end local v27    # "size":I
    .end local v28    # "uid":I
    .end local v29    # "userId":I
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v18

    .line 410
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "get dialer getApplicationInfo failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "e":Ljava/lang/Exception;
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    :cond_1
    const/16 v27, 0x0

    .restart local v27    # "size":I
    goto :goto_1

    .line 437
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    .restart local v19    # "i":I
    .restart local v28    # "uid":I
    .restart local v29    # "userId":I
    :cond_2
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    .line 438
    .local v20, "info":Landroid/content/pm/UserInfo;
    if-nez v20, :cond_3

    .line 439
    const/4 v11, -0x4

    .line 440
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 443
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_3
    invoke-static/range {v29 .. v29}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    .line 444
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x0

    .restart local v14    # "category":I
    goto :goto_3

    .line 447
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v20    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v6, -0x4

    move/from16 v0, v28

    if-eq v0, v6, :cond_5

    const/4 v6, -0x5

    move/from16 v0, v28

    if-ne v0, v6, :cond_6

    .line 448
    :cond_5
    move/from16 v11, v28

    .line 449
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .line 447
    .restart local v14    # "category":I
    goto :goto_3

    .line 450
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_6
    if-eqz v2, :cond_7

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v28

    if-ne v0, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 451
    const v12, 0x11200c7

    .line 450
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 452
    move/from16 v11, v28

    .line 453
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 455
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_7
    const/16 v11, 0x3e8

    .line 456
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 461
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v28    # "uid":I
    .end local v29    # "userId":I
    :cond_8
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    .line 462
    .local v26, "restrictedUidsMax":I
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 463
    aget v28, p2, v19

    .line 465
    .restart local v28    # "uid":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 462
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 469
    :cond_9
    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settingslib/AppItem;

    .line 470
    .local v21, "item":Lcom/android/settingslib/AppItem;
    if-nez v21, :cond_a

    .line 471
    new-instance v21, Lcom/android/settingslib/AppItem;

    .end local v21    # "item":Lcom/android/settingslib/AppItem;
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 472
    .restart local v21    # "item":Lcom/android/settingslib/AppItem;
    const-wide/16 v12, -0x1

    move-object/from16 v0, v21

    iput-wide v12, v0, Lcom/android/settingslib/AppItem;->total:J

    .line 473
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/settingslib/AppItem;->key:I

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    :cond_a
    const/4 v6, 0x1

    move-object/from16 v0, v21

    iput-boolean v6, v0, Lcom/android/settingslib/AppItem;->restricted:Z

    goto :goto_5

    .line 479
    .end local v21    # "item":Lcom/android/settingslib/AppItem;
    .end local v28    # "uid":I
    :cond_b
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 481
    const/16 v19, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_d

    .line 482
    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-eqz v6, :cond_c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    iget-wide v12, v6, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v16, 0x64

    mul-long v12, v12, v16

    div-long/2addr v12, v8

    long-to-int v0, v12

    move/from16 v22, v0

    .line 483
    .local v22, "percentTotal":I
    :goto_7
    new-instance v24, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 484
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 483
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v0, v12, v6, v1, v13}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V

    .line 485
    .local v24, "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    new-instance v6, Lcom/android/settings/datausage/DataUsageList$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/datausage/DataUsageList$8;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 481
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 482
    .end local v22    # "percentTotal":I
    .end local v24    # "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    :cond_c
    const/16 v22, 0x0

    .restart local v22    # "percentTotal":I
    goto :goto_7

    .line 396
    .end local v22    # "percentTotal":I
    :cond_d
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 136
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 142
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    new-instance v3, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 149
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->addPreferencesFromResource(I)V

    .line 150
    const-string/jumbo v3, "usage_amount"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    .line 151
    const-string/jumbo v3, "chart_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 152
    const-string/jumbo v3, "apps_group"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "sub_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 156
    const-string/jumbo v3, "network_template"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 159
    const-string/jumbo v3, "chart_data_deprecated"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 158
    check-cast v3, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    .line 160
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 163
    const-string/jumbo v3, "usage_summary"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    .line 165
    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->isDataSelectionEnable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    .line 166
    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/datausage/DataUsageList;->mShowDataUsage:Z

    .line 167
    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 171
    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 132
    :goto_0
    return-void

    .line 143
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 173
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 243
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 245
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 239
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    .line 216
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 235
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 216
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageList$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 181
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 183
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f11008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 185
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 205
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 185
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/datausage/DataUsageList;->setLoading(ZZ)V

    .line 180
    return-void
.end method
