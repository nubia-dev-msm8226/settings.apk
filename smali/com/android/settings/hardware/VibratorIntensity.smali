.class public Lcom/android/settings/hardware/VibratorIntensity;
.super Lcom/android/settings/CustomDialogPreference;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mDefaultValue:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mOriginalValue:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValueText:Landroid/widget/TextView;

.field private mWarningText:Landroid/widget/TextView;

.field private mWarningValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const v0, 0x7f04018d

    invoke-virtual {p0, v0}, Lcom/android/settings/hardware/VibratorIntensity;->setDialogLayoutResource(I)V

    .line 62
    return-void
.end method

.method private static intensityToPercent(III)I
    .locals 4
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "value"    # I

    .prologue
    .line 184
    sub-int v1, p2, p0

    int-to-float v1, v1

    sub-int v2, p1, p0

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 186
    .local v0, "percent":I
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 187
    const/16 v0, 0x64

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    if-gez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVibratorIntensity(I)V
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 175
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    invoke-virtual {v0, p1}, Lmokee/hardware/MKHardwareManager;->setVibratorIntensity(I)Z

    .line 173
    return-void
.end method

.method private testVibration()V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 180
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 178
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 78
    const v4, 0x10203d8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    .line 79
    const v4, 0x7f1102be

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mValueText:Landroid/widget/TextView;

    .line 80
    const v4, 0x7f1102bf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningText:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 84
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mOriginalValue:I

    .line 85
    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getVibratorWarningIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningValue:I

    .line 86
    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getVibratorMinIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    .line 87
    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getVibratorMaxIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMaxValue:I

    .line 88
    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getVibratorDefaultIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mDefaultValue:I

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 92
    iget v6, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    iget v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMaxValue:I

    iget v8, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningValue:I

    invoke-static {v6, v7, v8}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 91
    const v6, 0x7f0c0241

    .line 90
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningValue:I

    if-gtz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 99
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 100
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 101
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    const v4, 0x102000d

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    .line 104
    new-instance v4, Landroid/graphics/LightingColorFilter;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 104
    const/high16 v6, -0x1000000

    invoke-direct {v4, v6, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    .line 107
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMaxValue:I

    iget v6, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 109
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/hardware/VibratorIntensity;->mOriginalValue:I

    iget v6, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .param p1, "positiveResult"    # Z

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->onDialogClosed(Z)V

    .line 129
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 131
    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 133
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, v3, v4

    .line 134
    .local v0, "intensity":I
    iget v3, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    iget v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v3, v4, v0}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v1

    .line 135
    .local v1, "percent":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "vibrator_intensity"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 137
    const-string/jumbo v4, "vibrator_intensity"

    .line 136
    invoke-static {v3, v4, v0}, Lmokee/providers/MKSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    .end local v0    # "intensity":I
    .end local v1    # "percent":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 139
    :cond_0
    iget v3, p0, Lcom/android/settings/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-direct {p0, v3}, Lcom/android/settings/hardware/VibratorIntensity;->setVibratorIntensity(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 141
    const-string/jumbo v4, "vibrator_intensity"

    iget v5, p0, Lcom/android/settings/hardware/VibratorIntensity;->mOriginalValue:I

    .line 140
    invoke-static {v3, v4, v5}, Lmokee/providers/MKSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onDismissDialog(Landroid/content/DialogInterface;I)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/hardware/VibratorIntensity;->mDefaultValue:I

    iget v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    iget v0, p0, Lcom/android/settings/hardware/VibratorIntensity;->mDefaultValue:I

    invoke-direct {p0, v0}, Lcom/android/settings/hardware/VibratorIntensity;->setVibratorIntensity(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/hardware/VibratorIntensity;->testVibration()V

    .line 120
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 71
    const v0, 0x7f0c0242

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 148
    iget v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, p2, v2

    .line 149
    .local v0, "intensity":I
    iget v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarningValue:I

    if-lt v0, v2, :cond_3

    const/4 v1, 0x1

    .line 151
    .local v1, "shouldWarn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 152
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/android/settings/hardware/VibratorIntensity;->mValueText:Landroid/widget/TextView;

    .line 159
    const-string/jumbo v3, "%d%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    iget v6, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v5, v6, v0}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void

    .line 149
    .end local v1    # "shouldWarn":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "shouldWarn":Z
    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 152
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 163
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/hardware/VibratorIntensity;->mMinValue:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/hardware/VibratorIntensity;->setVibratorIntensity(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/hardware/VibratorIntensity;->testVibration()V

    .line 168
    return-void
.end method
