.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsagePreference.java"


# instance fields
.field private mEnd:J

.field private final mLimitColor:I

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mStart:J

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    .line 54
    const v1, -0xbaee2

    iput v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 56
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010038

    aput v3, v2, v4

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 58
    const v1, 0x7f040067

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    .line 50
    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settingslib/graph/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 10
    .param p1, "chart"    # Lcom/android/settingslib/graph/UsageView;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "top"    # I

    .prologue
    .line 129
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 130
    .local v1, "labels":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 131
    .local v2, "middleVisibility":I
    const/4 v3, 0x0

    .line 132
    .local v3, "topVisibility":I
    if-nez p2, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 137
    iget v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 138
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const v8, 0x7f0c0ae5

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 141
    :cond_1
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 142
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v8, 0x80000

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {p1, v5}, Lcom/android/settingslib/graph/UsageView;->setDividerLoc(I)V

    .line 143
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v8, 0x80000

    div-long/2addr v6, v8

    long-to-float v5, v6

    int-to-float v6, p3

    div-float v4, v5, v6

    .line 144
    .local v4, "weight":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v5, v4

    .line 145
    .local v0, "above":F
    invoke-virtual {p1, v0, v4}, Lcom/android/settingslib/graph/UsageView;->setSideLabelWeights(FF)V

    .line 146
    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 147
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 148
    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 147
    const v8, 0x7f0c0ae4

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 151
    .end local v0    # "above":F
    .end local v4    # "weight":F
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p1, v2, v3}, Lcom/android/settingslib/graph/UsageView;->setDividerColors(II)V

    .line 128
    return-void
.end method

.method private calcPoints(Lcom/android/settingslib/graph/UsageView;)V
    .locals 18
    .param p1, "chart"    # Lcom/android/settingslib/graph/UsageView;

    .prologue
    .line 96
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 97
    .local v7, "points":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .line 99
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v12, 0x0

    .line 101
    .local v12, "totalData":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v8

    .line 102
    .local v8, "start":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v2

    .line 103
    .local v2, "end":I
    if-gez v8, :cond_0

    return-void

    .line 105
    :cond_0
    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    move v6, v8

    .end local v3    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v6, "i":I
    :goto_0
    if-gt v6, v2, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v9, v6, v3}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 109
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v10, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 110
    .local v10, "startTime":J
    iget-wide v14, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v4, v10, v14

    .line 113
    .local v4, "endTime":J
    iget-wide v14, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v12, v14

    .line 115
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v9

    const-wide/32 v14, 0x80000

    div-long v14, v12, v14

    long-to-int v14, v14

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v14, v4, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v9

    const-wide/32 v14, 0x80000

    div-long v14, v12, v14

    long-to-int v14, v14

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v4    # "endTime":J
    .end local v10    # "startTime":J
    :cond_1
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    const/4 v14, 0x1

    if-le v9, v14, :cond_2

    .line 119
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/settingslib/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    .line 95
    :cond_2
    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "bytes"    # J
    .param p3, "str"    # I
    .param p4, "mLimitColor"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, p2, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 158
    .local v1, "result":Landroid/text/format/Formatter$BytesResult;
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 159
    iget-object v4, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 158
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 160
    .local v0, "label":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v0, v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private toInt(J)I
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 125
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 12

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v6, 0x0

    .line 82
    .local v6, "totalData":J
    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v10, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v8, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v3

    .line 83
    .local v3, "start":I
    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v10, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v8, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v0

    .line 85
    .local v0, "end":I
    move v2, v3

    .end local v1    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 86
    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8, v2, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 89
    .local v1, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v8, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v8, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v10, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v10, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 92
    .local v4, "policyMax":J
    :goto_1
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/32 v10, 0x80000

    div-long/2addr v8, v10

    long-to-int v8, v8

    return v8

    .line 91
    .end local v4    # "policyMax":J
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v8, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    const v2, 0x7f110104

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/graph/UsageView;

    .line 65
    .local v0, "chart":Lcom/android/settingslib/graph/UsageView;
    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    if-nez v2, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v1

    .line 68
    .local v1, "top":I
    invoke-virtual {v0}, Lcom/android/settingslib/graph/UsageView;->clearPaths()V

    .line 69
    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v2

    invoke-virtual {v0, v2, v1, v8, v8}, Lcom/android/settingslib/graph/UsageView;->configureGraph(IIZZ)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settingslib/graph/UsageView;)V

    .line 71
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 71
    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settingslib/graph/UsageView;Landroid/net/NetworkPolicy;I)V

    .line 62
    return-void
.end method

.method public setColors(II)V
    .locals 0
    .param p1, "seriesColor"    # I
    .param p2, "secondaryColor"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    .line 189
    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 187
    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 163
    return-void
.end method

.method public setNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "network"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 182
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    .line 170
    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 168
    return-void
.end method
