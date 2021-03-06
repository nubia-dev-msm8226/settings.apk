.class Lcom/android/settings/location/LocationSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 545
    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 543
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 7
    .param p1, "listening"    # Z

    .prologue
    const/4 v6, 0x0

    .line 550
    if-eqz p1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 552
    const-string/jumbo v2, "location_mode"

    .line 551
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 553
    .local v0, "mode":I
    if-eqz v0, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 555
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/location/LocationSettings;->-wrap0(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 554
    const v4, 0x7f0c0de5

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 549
    .end local v0    # "mode":I
    :cond_0
    :goto_0
    return-void

    .line 557
    .restart local v0    # "mode":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 558
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0de6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
