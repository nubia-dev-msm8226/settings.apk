.class public Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$3;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$5;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;
    }
.end annotation


# instance fields
.field private mAnimationCancelled:Z

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintAnimator:Landroid/widget/ImageView;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIndicatorBackgroundActivatedColor:I

.field private mIndicatorBackgroundRestingColor:I

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

.field private mStartMessage:Landroid/widget/TextView;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p1, "token"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 366
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 365
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 386
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 394
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 393
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 411
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 418
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method private animateFlash()V
    .locals 5

    .prologue
    .line 209
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 210
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 209
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 212
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 219
    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$8;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$8;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    return-void
.end method

.method private animateProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string/jumbo v2, "progress"

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 200
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput p1, v3, v4

    .line 199
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 201
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 204
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 205
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 195
    return-void
.end method

.method private clearError()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 350
    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 352
    const v2, 0x7f0b0137

    .line 351
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    const-wide/16 v2, 0x64

    .line 349
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 355
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 347
    :cond_0
    return-void
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 310
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 311
    return v2

    .line 313
    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 314
    .local v0, "progress":I
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    return v1
.end method

.method private launchFinish([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 240
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 241
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 236
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 332
    const v2, 0x7f0b0136

    .line 331
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 337
    const-wide/16 v2, 0xc8

    .line 334
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 327
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .prologue
    .line 318
    invoke-static {p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    move-result-object v0

    .line 319
    .local v0, "dlg":Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private showIconTouchDialog()V
    .locals 3

    .prologue
    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 324
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private startIconAnimation()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 159
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 165
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 163
    return-void
.end method

.method private updateDescription()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 253
    const v0, 0x7f0c041c

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :goto_0
    return-void

    .line 257
    :cond_0
    const v0, 0x7f0c041e

    .line 258
    const/4 v1, 0x1

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(IZ)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateProgress(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v2

    .line 300
    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getProgress(II)I

    move-result v0

    .line 302
    .local v0, "progress":I
    if-eqz p1, :cond_0

    .line 303
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->animateProgress(I)V

    .line 299
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 427
    const/16 v0, 0xf0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 190
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onBackPressed()V

    .line 185
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 97
    const v0, 0x7f0c041c

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 98
    const v0, 0x7f110136

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f110137

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f110139

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f11013b

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 102
    const v0, 0x7f11013a

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 104
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 106
    const v0, 0x10c000d

    .line 105
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    const v0, 0x10c000e

    .line 107
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    const v0, 0x10c000f

    .line 109
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    .line 129
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    .line 132
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    .line 131
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    .line 133
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    .line 94
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 273
    packed-switch p1, :pswitch_data_0

    .line 281
    const v0, 0x7f0c042c

    .line 284
    .local v0, "msgId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    .line 285
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 286
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 271
    return-void

    .line 277
    .end local v0    # "msgId":I
    :pswitch_0
    const v0, 0x7f0c042b

    .line 278
    .restart local v0    # "msgId":I
    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 4
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 292
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 293
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 294
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V

    .line 295
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 296
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 156
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 153
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 140
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const-string/jumbo v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 137
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 169
    :cond_2
    return-void
.end method
