.class public Lcom/android/settings/applications/AppOpsSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "AppOpsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRootView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/AppOpsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetCounters()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/settings/applications/AppOpsSummary;->-assertionsDisabled:Z

    .line 54
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private filterPageData(Ljava/util/List;I)V
    .locals 4
    .param p2, "tab"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/settings/applications/AppOpsState$OpsTemplate;>;>;"
    if-ltz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 183
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 184
    .local v0, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/settings/applications/AppOpsState$OpsTemplate;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v0    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/settings/applications/AppOpsState$OpsTemplate;>;"
    :cond_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->isRootForAppsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 188
    .restart local v0    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/settings/applications/AppOpsState$OpsTemplate;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    if-ne v2, v3, :cond_2

    .line 189
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method private resetAdapter()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->getCurrentPage()I

    move-result v0

    .line 122
    .local v0, "curPos":I
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 119
    return-void
.end method

.method private resetCounters()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 225
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-nez v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetCounters()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    .line 222
    return-void
.end method

.method private resetCountersConfirm()V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    const v1, 0x1080027

    .line 234
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    const v1, 0x7f0c023c

    .line 234
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    const v1, 0x7f0c023d

    .line 234
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/android/settings/applications/AppOpsSummary$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppOpsSummary$1;-><init>(Lcom/android/settings/applications/AppOpsSummary;)V

    const v2, 0x104000a

    .line 234
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowUserApps()Z
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_user_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xf

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "appops_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsSummary;->setHasOptionsMenu(Z)V

    .line 205
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 217
    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 218
    const v0, 0x7f110346

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->shouldShowUserApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 219
    const v0, 0x7f110347

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 215
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    iget-object v12, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040029

    .line 133
    const/4 v14, 0x0

    .line 132
    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 134
    .local v6, "rootView":Landroid/view/View;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mContentContainer:Landroid/view/ViewGroup;

    .line 135
    iput-object v6, p0, Lcom/android/settings/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a007f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 138
    .local v5, "pageNames":[Ljava/lang/CharSequence;
    sget-object v9, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 139
    .local v9, "templates":[Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    sget-boolean v12, Lcom/android/settings/applications/AppOpsSummary;->-assertionsDisabled:Z

    if-nez v12, :cond_1

    array-length v12, v5

    array-length v13, v9

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    :goto_0
    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 141
    :cond_1
    const/4 v7, -0x1

    .line 142
    .local v7, "specificTab":I
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 143
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 144
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "appops_tab"

    const-string/jumbo v14, ""

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 147
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v4, "pageData":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/settings/applications/AppOpsState$OpsTemplate;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v5

    if-ge v3, v12, :cond_3

    .line 149
    aget-object v12, v5, v3

    aget-object v13, v9, v3

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    :cond_3
    invoke-direct {p0, v4, v7}, Lcom/android/settings/applications/AppOpsSummary;->filterPageData(Ljava/util/List;I)V

    .line 153
    const v12, 0x7f110081

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager;

    iput-object v12, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 154
    new-instance v12, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    invoke-direct {v12, v13, v4}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/List;)V

    iput-object v12, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    .line 155
    iget-object v12, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v13, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 156
    iget-object v12, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v13, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 157
    const v12, 0x7f110082

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/PagerTabStrip;

    .line 160
    .local v8, "tabs":Landroid/support/v4/view/PagerTabStrip;
    invoke-virtual {v8}, Landroid/support/v4/view/PagerTabStrip;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$LayoutParams;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 162
    invoke-virtual {v8}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 163
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 164
    .local v11, "typedValue":Landroid/util/TypedValue;
    const v12, 0x1010435

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v11, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 165
    iget v12, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_5

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getContext()Landroid/content/Context;

    move-result-object v12

    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 168
    .local v2, "colorAccent":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 172
    move-object/from16 v0, p2

    instance-of v12, v0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v12, :cond_4

    .line 173
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    .line 178
    return-object v6

    .line 167
    .end local v2    # "colorAccent":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0d00bb

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 272
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 253
    :pswitch_0
    const-string/jumbo v1, "show_user_apps"

    .line 255
    .local v1, "prefNameUserApps":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 256
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "show_user_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    .line 259
    return v3

    :cond_0
    move v2, v3

    .line 255
    goto :goto_0

    .line 261
    .end local v1    # "prefNameUserApps":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "show_system_apps"

    .line 263
    .local v0, "prefNameSysApps":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 264
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    .line 267
    return v3

    :cond_1
    move v2, v3

    .line 263
    goto :goto_1

    .line 269
    .end local v0    # "prefNameSysApps":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetCountersConfirm()V

    .line 270
    return v3

    .line 251
    :pswitch_data_0
    .packed-switch 0x7f110346
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
