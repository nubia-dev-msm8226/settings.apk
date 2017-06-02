.class public Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsageDeprecatedPreference.java"


# instance fields
.field private mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mContext:Landroid/content/Context;

.field private mDetail:Landroid/net/NetworkStatsHistory;

.field private mInspectEnd:J

.field private mInspectRangeChanged:Z

.field private mInspectStart:J

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSelectLeft:J

.field private mSelectRight:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    .line 58
    iput-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    .line 74
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    .line 75
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->setLayoutResource(I)V

    .line 72
    return-void
.end method

.method private updateChart()V
    .locals 11

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mDetail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    iget-wide v6, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    iget-wide v8, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    invoke-virtual/range {v1 .. v9}, Lcom/android/settings/widget/ChartDataUsageView;->setVisibleRange(JJJJ)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v0

    .line 166
    .local v0, "isVisible":Z
    if-eqz v0, :cond_0

    const/4 v10, 0x0

    .line 167
    .local v10, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v10}, Lcom/android/settings/widget/ChartDataUsageView;->setDateSelectionSweepVisible(I)V

    .line 158
    return-void

    .line 166
    .end local v10    # "visible":I
    :cond_0
    const/16 v10, 0x8

    .restart local v10    # "visible":I
    goto :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mDetail:Landroid/net/NetworkStatsHistory;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    .line 149
    return-void
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 140
    return-void
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    .line 144
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v0

    return-wide v0

    .line 103
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectLeft()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectLeft()J

    move-result-wide v0

    return-wide v0

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    return-wide v0
.end method

.method public getInspectRight()J
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectRight()J

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v0

    return-wide v0

    .line 95
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 82
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->updateChart()V

    .line 88
    :cond_0
    const-string/jumbo v0, "ChartDataUsageDeprecatedPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindViewHolder mChartDataUsageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public setInspectRangeChanged()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    .line 170
    return-void
.end method

.method public setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 154
    return-void
.end method

.method public setVisibleRange(JJJJ)V
    .locals 1
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J
    .param p5, "selectLeft"    # J
    .param p7, "selectRight"    # J

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    .line 134
    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    .line 135
    iput-wide p5, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    .line 136
    iput-wide p7, p0, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    .line 132
    return-void
.end method
