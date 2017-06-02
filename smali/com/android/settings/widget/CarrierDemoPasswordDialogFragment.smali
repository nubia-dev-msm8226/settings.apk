.class public Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;
.super Landroid/app/DialogFragment;
.source "CarrierDemoPasswordDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$Callback;
    }
.end annotation


# instance fields
.field private mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->verifyPassword(Landroid/app/AlertDialog;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    :try_start_0
    const-string/jumbo v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v1, "CarrierDemoPasswordDialogFragment"

    const-string/jumbo v2, "Unable to verify demo mode password"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private verifyPassword(Landroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 119
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 120
    .local v3, "positiveButton":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->mMessageDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 125
    const v5, 0x1040079

    .line 124
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "passwordHash":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    :cond_2
    return-void

    .line 130
    :cond_3
    iget-object v4, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 131
    .local v0, "inputDigest":[B
    array-length v4, v0

    invoke-static {v0, v6, v4, v6}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "inputHash":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v5, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$1;-><init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;)V

    .line 59
    const v8, 0x7f0c0152

    .line 58
    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 70
    const/high16 v5, 0x1040000

    const/4 v8, 0x0

    .line 58
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 71
    const v5, 0x7f0c0151

    .line 58
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 72
    const v5, 0x7f0c0153

    .line 58
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 76
    .local v7, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "passwordField":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 78
    const/16 v4, 0x81

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    new-instance v4, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;-><init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    new-instance v4, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;-><init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 107
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10104d3

    aput v5, v4, v3

    .line 109
    invoke-virtual {v7, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 111
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "sidePadding":I
    move v4, v2

    move v5, v3

    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 113
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-object v0
.end method
