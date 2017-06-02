.class public Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)Lcom/android/settings/CustomDialogPreference;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomDialogPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v1, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 150
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/CustomDialogPreference;->onDialogClosed(Z)V

    .line 139
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/CustomDialogPreference;->-wrap0(Lcom/android/settings/CustomDialogPreference;Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    .line 112
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->onStart()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    instance-of v1, v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 116
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 118
    new-instance v2, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;-><init>(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 122
    new-instance v2, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;

    invoke-direct {v2, p0, v0, v5}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;-><init>(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V

    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;-><init>(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    return-void
.end method
