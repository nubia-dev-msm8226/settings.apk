.class public Lcom/android/settings/notification/ImportanceSeekBarPreference;
.super Lcom/android/settings/SeekBarPreference;
.source "ImportanceSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ImportanceSeekBarPreference$1;,
        Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mActiveSliderAlpha:F

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mAutoOn:Z

.field private mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mInactiveSliderAlpha:F

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mMinProgress:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSummary:Ljava/lang/String;

.field private mSummaryTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->applyAuto(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ImportanceSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->postNotifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    .line 202
    new-instance v1, Lcom/android/settings/notification/ImportanceSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference$1;-><init>(Lcom/android/settings/notification/ImportanceSeekBarPreference;)V

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 61
    const v1, 0x7f0400d5

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setLayoutResource(I)V

    .line 62
    invoke-static {p1}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 64
    const v1, 0x7f0d009b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 63
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    .line 67
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 68
    iput v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method private applyAuto(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setImportance(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v0, v2, v1}, Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    .line 131
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    .line 129
    const/16 v2, -0x3e8

    .line 128
    invoke-interface {v0, v2, v1}, Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    goto :goto_1
.end method

.method private applyAutoUi(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    .line 135
    iget-object v4, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 137
    iget-boolean v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    .line 138
    .local v0, "alpha":F
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 139
    .local v2, "starTint":Landroid/content/res/ColorStateList;
    :goto_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 141
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 144
    iget-boolean v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_0

    .line 145
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setImportance(I)V

    .line 147
    const/16 v3, -0x3e8

    .line 146
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .line 135
    .end local v0    # "alpha":F
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "starTint":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iget v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    .restart local v0    # "alpha":F
    goto :goto_1

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v2    # "starTint":Landroid/content/res/ColorStateList;
    goto :goto_2
.end method

.method private getImportanceSummary(I)Ljava/lang/String;
    .locals 2
    .param p1, "importance"    # I

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c7c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c76

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c77

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c026e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c78

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c79

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c7a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c7b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private postNotifyChanged()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 198
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 107
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    .line 109
    const v1, 0x10203d8

    .line 108
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 111
    const v1, 0x7f1101bd

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 112
    .local v0, "autoButton":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    .line 113
    new-instance v1, Lcom/android/settings/notification/ImportanceSeekBarPreference$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference$2;-><init>(Lcom/android/settings/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 160
    iget v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    if-ge p2, v1, :cond_0

    .line 161
    iget v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 162
    iget p2, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    .line 164
    :cond_0
    invoke-static {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->levelToImportance(I)I

    move-result v0

    .line 165
    .local v0, "importance":I
    iget-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 166
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v1, v0, p3}, Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    .line 158
    return-void
.end method

.method public setAutoOn(Z)V
    .locals 0
    .param p1, "autoOn"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->notifyChanged()V

    .line 99
    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    .line 85
    return-void
.end method

.method public setImportance(I)V
    .locals 1
    .param p1, "importance"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToLevel(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 94
    return-void
.end method

.method public setMinimumProgress(I)V
    .locals 0
    .param p1, "minProgress"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->notifyChanged()V

    .line 89
    return-void
.end method
