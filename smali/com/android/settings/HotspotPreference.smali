.class public Lcom/android/settings/HotspotPreference;
.super Landroid/support/v7/preference/Preference;
.source "HotspotPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubSummary:Landroid/widget/TextView;

.field private mSummary:Ljava/lang/CharSequence;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/HotspotPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/HotspotPreference;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/HotspotPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-object p1, p0, Lcom/android/settings/HotspotPreference;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/android/settings/HotspotPreference;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 71
    const v0, 0x7f110155

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_2

    .line 80
    const v0, 0x7f11007c

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    .line 81
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/HotspotPreference;->mSwitchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/HotspotPreference;->setChecked(Z)V

    .line 68
    :cond_2
    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 88
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/HotspotPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 89
    iput-boolean p2, p0, Lcom/android/settings/HotspotPreference;->mSwitchEnabled:Z

    .line 87
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/HotspotPreference;->mSwitchEnabled:Z

    .line 101
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    .line 94
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 97
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
