.class Lcom/android/settings/notification/NotificationSettingsBase$6;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettingsBase;->setupSoundTimeoutPref(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$6;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 292
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 293
    .local v0, "value":J
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$6;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$6;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase$6;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v4, v4, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationSoundTimeout(Ljava/lang/String;IJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    const/4 v2, 0x0

    return v2

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$6;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-static {v2, v0, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->-wrap1(Lcom/android/settings/notification/NotificationSettingsBase;J)V

    .line 297
    const/4 v2, 0x1

    return v2
.end method
