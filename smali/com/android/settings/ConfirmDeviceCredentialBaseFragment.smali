.class public abstract Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings/OptionsMenuFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;
    }
.end annotation


# instance fields
.field private mAllowFpAuthentication:Z

.field protected mCancelButton:Landroid/widget/Button;

.field protected mEffectiveUserId:I

.field protected mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;

.field protected final mHandler:Landroid/os/Handler;

.field protected mIsStrongAuthRequired:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field protected mReturnCredentials:Z

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    .line 305
    new-instance v0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 128
    const-string/jumbo v4, "device_policy"

    .line 127
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 129
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 130
    .local v0, "disabledFeatures":I
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isFingerprintDisallowedByStrongAuth()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    .line 138
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setWorkChallengeBackground(Landroid/view/View;I)V
    .locals 8
    .param p1, "baseView"    # Landroid/view/View;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f11023e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 234
    .local v3, "mainContent":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 240
    const-string/jumbo v6, "device_policy"

    .line 239
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 241
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    const v5, 0x7f1100c9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 243
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020191

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 246
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0080

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 247
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 245
    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 248
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 250
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 251
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 252
    const/4 v7, -0x1

    .line 251
    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .end local v1    # "image":Landroid/graphics/drawable/Drawable;
    .end local v4    # "screenSize":Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttonString"    # I
    .param p4, "dismiss"    # Z

    .prologue
    .line 328
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 331
    new-instance v2, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$3;

    invoke-direct {v2, p0, p4}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$3;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;Z)V

    .line 328
    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 340
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 327
    return-void
.end method


# virtual methods
.method protected abstract authenticationSucceeded()V
.end method

.method protected checkForPendingIntent()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 210
    .local v11, "taskId":I
    if-eq v11, v3, :cond_0

    .line 212
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 213
    .local v7, "activityManager":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 214
    .local v10, "options":Landroid/app/ActivityOptions;
    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 215
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return-void

    .line 217
    .end local v7    # "activityManager":Landroid/app/IActivityManager;
    .end local v10    # "options":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v9

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
    const-string/jumbo v2, "android.intent.extra.INTENT"

    .line 221
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 223
    .local v1, "intentSender":Landroid/content/IntentSender;
    if-eqz v1, :cond_1

    .line 225
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 226
    :catch_1
    move-exception v8

    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

.method protected abstract getLastTryErrorMessage()I
.end method

.method protected isProfileChallenge()Z
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated()V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 190
    .local v0, "trustManager":Landroid/app/trust/TrustManager;
    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->checkForPendingIntent()V

    .line 185
    .end local v0    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 85
    const-string/jumbo v4, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    .line 84
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 87
    const-string/jumbo v4, "return_credentials"

    .line 86
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 92
    .local v1, "userManager":Landroid/os/UserManager;
    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 93
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisallowedByStrongAuth()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIsStrongAuthRequired:Z

    .line 95
    iget-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisabledByAdmin()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    .line 82
    return-void

    .line 96
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIsStrongAuthRequired:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 199
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 177
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 143
    return-void
.end method

.method protected abstract onShowError()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/settings/OptionsMenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    const v2, 0x7f1100cb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    .line 103
    const v2, 0x7f1100cd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 104
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 105
    iget-object v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 106
    const v2, 0x7f1100cc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 104
    invoke-direct {v4, v5, v2, p0, v6}, Lcom/android/settings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V

    iput-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 108
    const-string/jumbo v4, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 107
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 109
    .local v1, "showCancelButton":Z
    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 118
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    .line 116
    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    .line 121
    .local v0, "credentialOwnerUserId":I
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->setWorkChallengeBackground(Landroid/view/View;I)V

    .line 100
    :cond_0
    return-void

    .line 109
    .end local v0    # "credentialOwnerUserId":I
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method protected refreshLockScreen()V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 158
    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 148
    :cond_1
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    goto :goto_0
.end method

.method protected reportFailedAttempt()V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 270
    :cond_0
    return-void
.end method

.method protected reportSuccessfullAttempt()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 261
    :cond_0
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "supplementalText"    # Ljava/lang/CharSequence;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 166
    const-string/jumbo v3, "com.android.settings.ConfirmCredentials.title"

    .line 165
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 167
    .local v2, "titleText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 168
    :cond_0
    return-void

    .line 171
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0    # "accessibilityTitle":Ljava/lang/String;
    .end local v2    # "titleText":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method protected showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 323
    return-void
.end method

.method protected showError(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onShowError()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method protected updateErrorMessage(I)V
    .locals 9
    .param p1, "numAttempts"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 281
    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    .line 282
    .local v0, "maxAttempts":I
    if-lez v0, :cond_1

    if-lez p1, :cond_1

    .line 283
    sub-int v2, v0, p1

    .line 284
    .local v2, "remainingAttempts":I
    if-ne v2, v8, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 287
    const v5, 0x7f0c048d

    .line 286
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getLastTryErrorMessage()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "message":Ljava/lang/String;
    const v4, 0x104000a

    invoke-direct {p0, v3, v1, v4, v7}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 295
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 296
    const v6, 0x7f0c048c

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1    # "message":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 279
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "remainingAttempts":I
    :cond_1
    return-void

    .line 290
    .restart local v2    # "remainingAttempts":I
    :cond_2
    if-gtz v2, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0491

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1    # "message":Ljava/lang/String;
    const v4, 0x7f0c0492

    invoke-direct {p0, v6, v1, v4, v8}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
