.class public Lcom/android/settings/applications/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
.implements Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/LockPatternActivity$1;,
        Lcom/android/settings/applications/LockPatternActivity$2;,
        Lcom/android/settings/applications/LockPatternActivity$3;,
        Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;
    }
.end annotation


# static fields
.field private static TIMEOUT_PREF_KEY:Ljava/lang/String;


# instance fields
.field mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

.field mCancel:Landroid/widget/Button;

.field mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field mCancelPatternRunnable:Ljava/lang/Runnable;

.field mConfirming:Z

.field mContinue:Landroid/widget/Button;

.field mContinueOnClickListener:Landroid/view/View$OnClickListener;

.field mCreate:Z

.field mFingerPrintSetUp:Z

.field private mFingerPrintUiHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

.field mFingerprintIconView:Landroid/widget/ImageView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field mItem:Landroid/view/MenuItem;

.field mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field mPatternHash:[B

.field mPatternLockHeader:Landroid/widget/TextView;

.field mRetry:I

.field mRetryLocked:Z

.field mRetryPattern:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/LockPatternActivity;Z)V
    .locals 0
    .param p1, "clear"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->setPatternTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "retry_timeout"

    sput-object v0, Lcom/android/settings/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryLocked:Z

    .line 88
    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$1;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$2;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$3;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method private isRetryLocked()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 458
    .local v4, "time":J
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/settings/applications/LockPatternActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v6, Lcom/android/settings/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 460
    .local v2, "retryTime":J
    sub-long v6, v4, v2

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryLocked:Z

    .line 461
    iget-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryLocked:Z

    return v1
.end method

.method private resetPatternState(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 286
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "pattern_lock_protected_apps"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "pattern":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v5, "recreate_pattern_lock"

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .end local p1    # "clear":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    .line 291
    iput-object v7, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 296
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v6, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v5, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_5

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c07cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 285
    return-void

    .restart local p1    # "clear":Z
    :cond_2
    move p1, v2

    .line 288
    goto :goto_0

    .end local p1    # "clear":Z
    :cond_3
    move v2, v4

    .line 297
    goto :goto_1

    :cond_4
    move v3, v4

    .line 299
    goto :goto_2

    .line 302
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v2, :cond_6

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0263

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 304
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c07da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private setPatternTimeout()V
    .locals 6

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/LockPatternActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 464
    return-void
.end method

.method private switchToAccount()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 237
    const v2, 0x7f0c0257

    .line 236
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f020102

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 235
    return-void
.end method

.method private switchToPattern(Z)V
    .locals 4
    .param p1, "reset"    # Z

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->isRetryLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    if-eqz p1, :cond_1

    .line 224
    invoke-direct {p0, v3}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0263

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f0200d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 230
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->clearFocusOnInput()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 219
    return-void

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c07da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onAuthenticated()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    .line 311
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const v0, 0x7f0400c0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->setContentView(I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 251
    const v0, 0x7f1101a6

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f1101a9

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    .line 253
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const v0, 0x7f1101aa

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    .line 255
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v0, 0x7f1101a8

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    .line 258
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0, p0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->setOnNotifyAccountResetCb(Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V

    .line 259
    const v0, 0x7f1101a7

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 260
    const v0, 0x7f1101ab

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerprintIconView:Landroid/widget/ImageView;

    .line 262
    invoke-direct {p0, v3}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings/applications/LockPatternActivity;Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 268
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_2

    .line 280
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    .line 274
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintUiHelper;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerprintIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    .line 275
    invoke-static {p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v3

    .line 274
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/settings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V

    .line 273
    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 276
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0, v4}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->setDarkIconography(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 278
    const v1, 0x7f0c0263

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->setIdleText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 153
    const v0, 0x7f0c0256

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 154
    const v1, 0x7f0200d2

    .line 153
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    const/16 v1, 0x72

    .line 153
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    const/4 v1, 0x5

    .line 153
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    .line 159
    iget-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryLocked:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f020102

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 317
    return-void
.end method

.method public onNotifyAccountReset()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 210
    return v1

    .line 199
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0, v1}, Lcom/android/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 204
    :goto_0
    return v2

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V

    goto :goto_0

    .line 206
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    .line 208
    return v2

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 440
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 436
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 181
    const-string/jumbo v0, "isAccountView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V

    .line 179
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 185
    const-string/jumbo v0, "pattern_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 186
    const-string/jumbo v0, "confirming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    .line 187
    const-string/jumbo v0, "retrypattern"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 188
    const-string/jumbo v0, "retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    .line 189
    const-string/jumbo v0, "create"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    .line 190
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const-string/jumbo v1, "continueEnabled"

    .line 191
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    .line 190
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 446
    iget-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0263

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->isRetryLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 452
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V

    .line 444
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    const-string/jumbo v1, "isAccountView"

    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string/jumbo v0, "continueEnabled"

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string/jumbo v0, "confirming"

    iget-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string/jumbo v0, "retrypattern"

    iget-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string/jumbo v0, "retry"

    iget v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo v0, "pattern_hash"

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 175
    const-string/jumbo v0, "create"

    iget-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x0

    .line 416
    if-nez p1, :cond_0

    .line 417
    return-object v7

    .line 420
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 421
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 422
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 423
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 424
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string/jumbo v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 428
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 429
    .local v1, "hash":[B
    return-object v1

    .line 430
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 431
    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    return-object v6
.end method
