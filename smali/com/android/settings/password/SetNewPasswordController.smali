.class final Lcom/android/settings/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetNewPasswordController$Ui;
    }
.end annotation


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFingerprintManager:Lcom/android/settings/password/IFingerprintManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTargetUserId:I

.field private final mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Lcom/android/settings/password/IFingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V
    .locals 1
    .param p1, "targetUserId"    # I
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "fingerprintManager"    # Lcom/android/settings/password/IFingerprintManager;
    .param p4, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p5, "ui"    # Lcom/android/settings/password/SetNewPasswordController$Ui;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    iput-object p3, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/settings/password/IFingerprintManager;

    .line 102
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 103
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/SetNewPasswordController$Ui;

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    .line 98
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ui"    # Lcom/android/settings/password/SetNewPasswordController$Ui;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 71
    .local v1, "userId":I
    const-string/jumbo v0, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 72
    invoke-static {p3, v0, v4, v2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 74
    .local v6, "callingUserId":I
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 75
    .local v8, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    move v1, v6

    .line 81
    .end local v6    # "callingUserId":I
    .end local v8    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    .line 83
    .local v7, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-nez v7, :cond_1

    .line 84
    const/4 v3, 0x0

    .line 86
    :goto_0
    new-instance v0, Lcom/android/settings/password/SetNewPasswordController;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    const-string/jumbo v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    move-object v5, p1

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Lcom/android/settings/password/IFingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V

    return-object v0

    .line 85
    :cond_1
    new-instance v3, Lcom/android/settings/password/FingerprintManagerWrapper;

    invoke-direct {v3, v7}, Lcom/android/settings/password/FingerprintManagerWrapper;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    .local v3, "fingerprintManagerWrapper":Lcom/android/settings/password/IFingerprintManager;
    goto :goto_0
.end method

.method private getFingerprintChooseLockExtras()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 127
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v2, "chooseLockExtras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/settings/password/IFingerprintManager;

    invoke-interface {v3}, Lcom/android/settings/password/IFingerprintManager;->preEnroll()J

    move-result-wide v0

    .line 129
    .local v0, "challenge":J
    const-string/jumbo v3, "minimum_quality"

    .line 130
    const/high16 v4, 0x10000

    .line 129
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string/jumbo v3, "hide_disabled_prefs"

    .line 131
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string/jumbo v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 135
    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    return-object v2
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 142
    .local v0, "disabledFeatures":I
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public dispatchSetNewPasswordIntent()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "android.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/settings/password/IFingerprintManager;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/settings/password/IFingerprintManager;

    invoke-interface {v1}, Lcom/android/settings/password/IFingerprintManager;->isHardwareDetected()Z

    move-result v1

    .line 111
    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/settings/password/IFingerprintManager;

    iget v2, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    invoke-interface {v1, v2}, Lcom/android/settings/password/IFingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    invoke-interface {v1, v0}, Lcom/android/settings/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    .line 109
    return-void

    .line 115
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->isFingerprintDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getFingerprintChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "extras":Landroid/os/Bundle;
    goto :goto_0
.end method
