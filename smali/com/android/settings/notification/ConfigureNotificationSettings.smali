.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;,
        Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

.field private mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mLockscreenSelectedValueProfile:I

.field private mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

.field private mProfileChallengeUserId:I

.field private mSecure:Z

.field private mSecureProfile:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    .line 49
    return-void
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 342
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 341
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 337
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 336
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 11

    .prologue
    const v10, 0x7f0c0c6b

    const v9, 0x7f0c0c6a

    const v8, 0x7f0c0c69

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 157
    const-string/jumbo v7, "lock_screen_notifications"

    .line 156
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/RestrictedDropDownPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 158
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v6, :cond_0

    .line 159
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const/16 v6, 0xc

    .line 173
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 176
    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v6, :cond_1

    .line 177
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v6, 0x4

    .line 182
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 186
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 187
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    .line 189
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 190
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    :goto_0
    return-void

    .line 210
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 11

    .prologue
    const v10, 0x7f0c0c70

    const v9, 0x7f0c0c6f

    const v8, 0x7f0c0c6e

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 217
    const-string/jumbo v7, "lock_screen_notifications_profile"

    .line 216
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/RestrictedDropDownPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 218
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v6, :cond_0

    .line 219
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const/16 v6, 0xc

    .line 233
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 236
    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    .line 237
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    const/4 v6, 0x4

    .line 243
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 247
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 248
    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    .line 247
    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 254
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    .line 256
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 257
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    :goto_0
    return-void

    .line 280
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initPulse()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 118
    .local v1, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v2, "lights"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 120
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v2, "notification_pulse"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    .line 119
    iput-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    .line 121
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 122
    const-string/jumbo v2, "ConfigNotiSettings"

    const-string/jumbo v3, "Preference not found: notification_pulse"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    const v3, 0x1120048

    .line 125
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    .line 131
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v3, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 287
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 286
    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 288
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-eqz v3, :cond_0

    .line 290
    new-instance v1, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 291
    .local v1, "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;)V

    .line 293
    .end local v1    # "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_0
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_1

    .line 295
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 294
    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 296
    .local v2, "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-eqz v3, :cond_1

    .line 298
    new-instance v1, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 300
    .restart local v1    # "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;)V

    .line 285
    .end local v1    # "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    .end local v2    # "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_1
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v2, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 310
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    .line 311
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 312
    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0c0c6b

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    .line 315
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 305
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 313
    .end local v0    # "allowPrivate":Z
    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0c0c69

    goto :goto_1

    .line 314
    :cond_3
    const v2, 0x7f0c0c6a

    goto :goto_1
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    .prologue
    .line 319
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v2, :cond_1

    .line 323
    return-void

    .line 325
    :cond_1
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 326
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    .line 327
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 328
    :goto_0
    if-nez v1, :cond_3

    .line 329
    const v2, 0x7f0c0c70

    .line 328
    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    .line 332
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 318
    return-void

    .line 326
    :cond_2
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 330
    .end local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0c0c6e

    goto :goto_1

    .line 331
    :cond_4
    const v2, 0x7f0c0c6f

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 149
    const-string/jumbo v4, "notification_light_pulse"

    .line 148
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    return-void

    .line 148
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "ConfigNotiSettings"

    const-string/jumbo v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method synthetic -com_android_settings_notification_ConfigureNotificationSettings_lambda$1(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 249
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 250
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 248
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x151

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/16 v5, -0x2710

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 80
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 79
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 82
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 86
    .local v0, "isUnified":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 87
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    if-eq v3, v5, :cond_0

    .line 88
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 87
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    .line 90
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initPulse()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotifications()V

    .line 95
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    if-eq v2, v5, :cond_1

    .line 96
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotificationsForProfile()V

    .line 76
    :cond_1
    return-void

    .line 84
    .end local v0    # "isUnified":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "isUnified":Z
    goto :goto_0

    .line 88
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 103
    return-void
.end method
