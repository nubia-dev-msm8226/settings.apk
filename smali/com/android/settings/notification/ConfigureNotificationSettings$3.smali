.class Lcom/android/settings/notification/ConfigureNotificationSettings$3;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotificationsForProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 261
    .local v2, "val":I
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get1(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 262
    return v5

    .line 265
    :cond_0
    const v3, 0x7f0c0c70

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 267
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0c0c6e

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 268
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 269
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    .line 270
    if-eqz v1, :cond_4

    move v3, v4

    :goto_2
    iget-object v8, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v8

    .line 268
    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 271
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 272
    const-string/jumbo v6, "lock_screen_show_notifications"

    .line 273
    if-eqz v0, :cond_1

    move v5, v4

    :cond_1
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v7}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v7

    .line 271
    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 274
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-set1(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I

    .line 275
    return v4

    .line 265
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 267
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_4
    move v3, v5

    .line 270
    goto :goto_2
.end method
