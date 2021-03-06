.class public Lcom/android/settings/fingerprint/SetupSkipDialog;
.super Landroid/app/DialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/fingerprint/SetupSkipDialog;
    .locals 3
    .param p0, "isFrpSupported"    # Z

    .prologue
    .line 39
    new-instance v1, Lcom/android/settings/fingerprint/SetupSkipDialog;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/SetupSkipDialog;-><init>()V

    .line 40
    .local v1, "dialog":Lcom/android/settings/fingerprint/SetupSkipDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "frp_supported"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/android/settings/fingerprint/SetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 64
    packed-switch p2, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "activity":Landroid/app/Activity;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const v2, 0x7f0c0414

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    const v2, 0x7f0c0415

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 57
    const-string/jumbo v1, "frp_supported"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const v1, 0x7f0c0412

    .line 54
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    const v1, 0x7f0c0413

    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 74
    const-string/jumbo v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    return-void
.end method
