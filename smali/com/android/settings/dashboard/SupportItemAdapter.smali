.class public final Lcom/android/settings/dashboard/SupportItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;,
        Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;,
        Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;,
        Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;,
        Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;,
        Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mActivity:Landroid/app/Activity;

.field private final mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

.field private mHasInternet:Z

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedCountry:Ljava/lang/String;

.field private final mSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;

.field private final mSupportData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/SupportItemAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/SupportItemAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/SupportItemAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshEscalationCards()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/SupportItemAdapter;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter;->tryStartDisclaimerAndSupport(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/settings/overlay/SupportFeatureProvider;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "supportFeatureProvider"    # Lcom/android/settings/overlay/SupportFeatureProvider;
    .param p4, "itemClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    .line 82
    iput-object p3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 83
    iput-object p4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    .line 85
    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const-string/jumbo v0, "STATE_SELECTED_COUNTRY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportEligibleAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccount:Landroid/accounts/Account;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshData()V

    .line 80
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/settings/overlay/SupportFeatureProvider;->getCurrentCountryCodeIfHasConfig(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    goto :goto_0
.end method

.method private addEscalationCards()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addSignInPromo()V

    .line 185
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eqz v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addOnlineEscalationCards()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addOfflineEscalationCards()V

    goto :goto_0
.end method

.method private addMoreHelpItems()V
    .locals 8

    .prologue
    const v7, 0x7f040145

    const/4 v6, 0x0

    .line 288
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v3, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f040146

    invoke-direct {v3, v4, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 290
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/android/settings/overlay/SupportFeatureProvider;->getHelpIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v3, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v7}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;-><init>(Landroid/content/Context;I)V

    .line 293
    const v4, 0x7f0200c7

    .line 292
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIcon(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 294
    const v4, 0x7f0c0e76

    .line 292
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 296
    const/16 v4, 0x1df

    .line 292
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setMetricsEvent(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/android/settings/overlay/SupportFeatureProvider;->getTipsAndTricksIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 300
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v3, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v7}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;-><init>(Landroid/content/Context;I)V

    .line 302
    const v4, 0x7f0200cc

    .line 301
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIcon(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 303
    const v4, 0x7f0c0e75

    .line 301
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 305
    const/16 v4, 0x1de

    .line 301
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setMetricsEvent(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    return-void
.end method

.method private addOfflineEscalationCards()V
    .locals 9

    .prologue
    const v3, 0x7f0c0e65

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 255
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-interface {v2, v6, v4}, Lcom/android/settings/overlay/SupportFeatureProvider;->isAlwaysOperating(ILjava/lang/String;)Z

    move-result v0

    .line 256
    .local v0, "isPhoneSupportAlwaysOperating":Z
    if-eqz v0, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0e69

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "operatingHours":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v5}, Lcom/android/settings/overlay/SupportFeatureProvider;->getPhoneSupportCountries()Ljava/util/List;

    move-result-object v5

    .line 262
    invoke-virtual {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setCountries(Ljava/util/List;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    move-result-object v2

    .line 264
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 265
    iget-object v6, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    const/4 v7, 0x1

    .line 264
    invoke-interface {v5, v6, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v5

    .line 262
    invoke-virtual {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setTollFreePhone(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    move-result-object v2

    .line 266
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 267
    iget-object v6, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    .line 266
    invoke-interface {v5, v6, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v5

    .line 262
    invoke-virtual {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setTolledPhone(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    move-result-object v5

    .line 268
    if-eqz v0, :cond_2

    .line 269
    const v2, 0x7f0c0e66

    .line 262
    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v2

    .line 271
    if-eqz v0, :cond_0

    .line 272
    const v3, 0x7f0c0e67

    .line 262
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitleDescription(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(Ljava/lang/CharSequence;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v2

    invoke-interface {v4, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 252
    return-void

    .line 259
    .end local v1    # "operatingHours":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    .line 260
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    .line 259
    invoke-interface {v2, v4, v6, v5, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->getOperationHours(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "operatingHours":Ljava/lang/CharSequence;
    goto :goto_0

    :cond_2
    move v2, v3

    .line 270
    goto :goto_1
.end method

.method private addOnlineEscalationCards()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v5, 0x7f0c0e65

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 213
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v3, v4, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->isSupportTypeEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 215
    .local v2, "hasPhoneOperation":Z
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v3, v4, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->isSupportTypeEnabled(Landroid/content/Context;I)Z

    move-result v1

    .line 216
    .local v1, "hasChatOperation":Z
    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "builder":Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    if-nez v2, :cond_0

    if-eqz v1, :cond_4

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v7, v9}, Lcom/android/settings/overlay/SupportFeatureProvider;->isAlwaysOperating(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v8, v9}, Lcom/android/settings/overlay/SupportFeatureProvider;->isAlwaysOperating(ILjava/lang/String;)Z

    move-result v3

    .line 221
    if-eqz v3, :cond_5

    .line 224
    :cond_1
    const v3, 0x7f0c0e66

    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 225
    const v4, 0x7f0c0e67

    .line 224
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitleDescription(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 226
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0e69

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(Ljava/lang/CharSequence;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    .line 239
    :goto_0
    if-eqz v2, :cond_2

    .line 240
    const v3, 0x7f0c0e73

    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText1(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    .line 241
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->getEstimatedWaitTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setSummary1(Ljava/lang/String;)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    .line 242
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v4, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v4

    .line 240
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setEnabled1(Z)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    .line 244
    :cond_2
    if-eqz v1, :cond_3

    .line 245
    const v3, 0x7f0c0e74

    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText2(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    .line 246
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->getEstimatedWaitTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setSummary2(Ljava/lang/String;)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    .line 247
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v4, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v4

    .line 245
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setEnabled2(Z)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    .line 249
    :cond_3
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    return-void

    .line 219
    :cond_4
    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 220
    const v4, 0x7f0c0e6c

    .line 219
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    goto :goto_0

    .line 227
    :cond_5
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 228
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v3

    .line 227
    if-eqz v3, :cond_7

    .line 230
    :cond_6
    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 231
    const v4, 0x7f0c0e68

    .line 230
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    goto :goto_0

    .line 234
    :cond_7
    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    .line 237
    const/4 v6, 0x1

    .line 236
    invoke-interface {v4, v5, v7, v9, v6}, Lcom/android/settings/overlay/SupportFeatureProvider;->getOperationHours(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 234
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(Ljava/lang/CharSequence;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    goto :goto_0
.end method

.method private addSignInPromo()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040143

    invoke-direct {v1, v2, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;-><init>(Landroid/content/Context;I)V

    .line 280
    const v2, 0x7f0c0e79

    .line 279
    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText1(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v1

    .line 281
    const v2, 0x7f0c0e7a

    .line 279
    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText2(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v1

    .line 282
    const v2, 0x7f0c0e77

    .line 279
    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v1

    .line 283
    const v2, 0x7f0c0e78

    .line 279
    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 278
    return-void
.end method

.method private bindEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V
    .locals 4
    .param p1, "holder"    # Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    .param p2, "data"    # Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 311
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitle:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 312
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    if-nez v0, :cond_5

    .line 315
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_0
    iget-object v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :goto_1
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary1View:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary1View:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v3, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary1View:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary1:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :cond_1
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary2View:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary2View:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary2View:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary2:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :cond_4
    return-void

    .line 317
    :cond_5
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-boolean v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled1:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 320
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 319
    goto :goto_3

    .line 325
    :cond_7
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v3, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-boolean v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled2:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 328
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    move v0, v1

    .line 327
    goto :goto_4

    :cond_9
    move v0, v1

    .line 333
    goto :goto_2
.end method

.method private bindOfflineEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;)V
    .locals 9
    .param p1, "holder"    # Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    .param p2, "data"    # Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 344
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tileTitle:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f11017c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 349
    .local v3, "spinner":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 350
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->countries:Ljava/util/List;

    const v6, 0x1090009

    .line 349
    invoke-direct {v0, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 351
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 352
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v4}, Lcom/android/settings/overlay/SupportFeatureProvider;->getPhoneSupportCountryCodes()Ljava/util/List;

    move-result-object v1

    .line 353
    .local v1, "countryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 354
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 361
    iget-object v4, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tollFreePhone:Lcom/android/settings/support/SupportPhone;

    if-eqz v4, :cond_3

    .line 362
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tollFreePhone:Lcom/android/settings/support/SupportPhone;

    iget-object v5, v5, Lcom/android/settings/support/SupportPhone;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :goto_1
    iget-object v4, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tolledPhone:Lcom/android/settings/support/SupportPhone;

    if-eqz v4, :cond_4

    .line 369
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    .line 370
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0e71

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :goto_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 381
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f110264

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_1
    return-void

    .line 353
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_3
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 374
    :cond_4
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private bindSignInPromoTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    .param p2, "data"    # Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    .prologue
    .line 386
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 387
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 390
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    return-void
.end method

.method private bindSupportTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    .param p2, "data"    # Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    .prologue
    .line 396
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    :cond_0
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 401
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 403
    :cond_1
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_2
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addEscalationCards()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addMoreHelpItems()V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->notifyDataSetChanged()V

    .line 174
    return-void
.end method

.method private refreshEscalationCards()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->getItemViewType(I)I

    move-result v0

    .line 201
    .local v0, "itemType":I
    const v1, 0x7f040143

    if-eq v0, v1, :cond_0

    .line 202
    const v1, 0x7f04013f

    if-ne v0, v1, :cond_2

    .line 204
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addEscalationCards()V

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->notifyItemChanged(I)V

    .line 198
    .end local v0    # "itemType":I
    :cond_1
    return-void

    .line 203
    .restart local v0    # "itemType":I
    :cond_2
    const v1, 0x7f040141

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private tryStartDisclaimerAndSupport(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/android/settings/overlay/SupportFeatureProvider;->shouldShowDisclaimerDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, p1}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->newInstance(Landroid/accounts/Account;I)Lcom/android/settings/support/SupportDisclaimerDialogFragment;

    move-result-object v0

    .line 415
    .local v0, "fragment":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "SupportDisclaimerDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 416
    return-void

    .line 418
    .end local v0    # "fragment":Landroid/app/DialogFragment;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccount:Landroid/accounts/Account;

    invoke-interface {v1, v2, v3, p1}, Lcom/android/settings/overlay/SupportFeatureProvider;->startSupport(Landroid/app/Activity;Landroid/accounts/Account;I)V

    .line 412
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    iget v0, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->type:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 105
    check-cast p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/SupportItemAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    .line 107
    .local v0, "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    invoke-virtual {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 120
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindSupportTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V

    .line 105
    .end local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    :goto_0
    :pswitch_1
    return-void

    .line 109
    .restart local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    :pswitch_2
    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    .end local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindSignInPromoTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V

    goto :goto_0

    .line 112
    .restart local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    :pswitch_3
    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    .end local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V

    goto :goto_0

    .line 115
    .restart local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    :pswitch_4
    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;

    .end local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindOfflineEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x7f04013f
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/SupportItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 100
    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    .line 100
    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onItemClicked(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 139
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    .line 141
    .local v0, "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    iget-object v1, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    iget v1, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->metricsEvent:I

    if-ltz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget v2, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->metricsEvent:I

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    .end local v0    # "data":Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    const-string/jumbo v0, "STATE_SELECTED_COUNTRY"

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccount:Landroid/accounts/Account;

    .line 161
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/overlay/SupportFeatureProvider;->refreshOperationRules()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshEscalationCards()V

    .line 158
    :cond_0
    return-void
.end method

.method public setHasInternet(Z)V
    .locals 1
    .param p1, "hasInternet"    # Z

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eq v0, p1, :cond_0

    .line 153
    iput-boolean p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    .line 154
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshEscalationCards()V

    .line 151
    :cond_0
    return-void
.end method
