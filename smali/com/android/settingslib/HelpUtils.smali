.class public Lcom/android/settingslib/HelpUtils;
.super Ljava/lang/Object;
.source "HelpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCachedVersionCode:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settingslib/HelpUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settingslib/HelpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/HelpUtils;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIntentParameters(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "backupContext"    # Ljava/lang/String;
    .param p3, "sendPackageName"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 175
    const-string/jumbo v9, "EXTRA_CONTEXT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 177
    const-string/jumbo v9, "EXTRA_CONTEXT"

    invoke-virtual {p1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 181
    .local v8, "resources":Landroid/content/res/Resources;
    sget v9, Lcom/android/settingslib/R$bool;->config_sendPackageName:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 183
    .local v5, "includePackageName":Z
    if-eqz p3, :cond_1

    if-eqz v5, :cond_1

    .line 185
    new-array v6, v10, [Ljava/lang/String;

    sget v9, Lcom/android/settingslib/R$string;->config_helpPackageNameKey:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v11

    .line 187
    .local v6, "packageNameKey":[Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/String;

    sget v9, Lcom/android/settingslib/R$string;->config_helpPackageNameValue:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v11

    .line 189
    .local v7, "packageNameValue":[Ljava/lang/String;
    sget v9, Lcom/android/settingslib/R$string;->config_helpIntentExtraKey:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "helpIntentExtraKey":Ljava/lang/String;
    sget v9, Lcom/android/settingslib/R$string;->config_helpIntentNameKey:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "helpIntentNameKey":Ljava/lang/String;
    sget v9, Lcom/android/settingslib/R$string;->config_feedbackIntentExtraKey:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "feedbackIntentExtraKey":Ljava/lang/String;
    sget v9, Lcom/android/settingslib/R$string;->config_feedbackIntentNameKey:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "feedbackIntentNameKey":Ljava/lang/String;
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .end local v1    # "feedbackIntentExtraKey":Ljava/lang/String;
    .end local v2    # "feedbackIntentNameKey":Ljava/lang/String;
    .end local v3    # "helpIntentExtraKey":Ljava/lang/String;
    .end local v4    # "helpIntentNameKey":Ljava/lang/String;
    .end local v6    # "packageNameKey":[Ljava/lang/String;
    .end local v7    # "packageNameValue":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "EXTRA_THEME"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    new-array v9, v10, [I

    const v10, 0x1010433

    aput v10, v9, v11

    invoke-virtual {p0, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    .local v0, "array":Landroid/content/res/TypedArray;
    const-string/jumbo v9, "EXTRA_PRIMARY_COLOR"

    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return-void
.end method

.method public static getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helpUriString"    # Ljava/lang/String;
    .param p2, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 143
    return-object v6

    .line 148
    :cond_0
    const/4 v4, 0x3

    .line 147
    :try_start_0
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 149
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-static {p0, v3, p2, v4}, Lcom/android/settingslib/HelpUtils;->addIntentParameters(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 151
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 152
    return-object v3

    .line 153
    :cond_1
    const-string/jumbo v4, "EXTRA_BACKUP_URI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    const-string/jumbo v4, "EXTRA_BACKUP_URI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 158
    :cond_2
    return-object v6

    .line 160
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settingslib/HelpUtils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 167
    .local v2, "fullUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    return-object v3
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "helpUriResource"    # I
    .param p3, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 84
    sget v1, Lcom/android/settingslib/R$string;->help_feedback_label:I

    const/16 v2, 0x65

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 85
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "helpUri"    # Ljava/lang/String;
    .param p3, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 78
    sget v1, Lcom/android/settingslib/R$string;->help_feedback_label:I

    const/16 v2, 0x65

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-static {p0, v0, p2, p3}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "helpMenuItem"    # Landroid/view/MenuItem;
    .param p2, "helpUriString"    # Ljava/lang/String;
    .param p3, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 100
    return v3

    .line 102
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    return v3

    .line 109
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 114
    new-instance v1, Lcom/android/settingslib/HelpUtils$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/HelpUtils$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 128
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 129
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    return v4

    .line 131
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    return v3
.end method

.method public static uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 216
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v3, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 219
    sget-object v3, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 223
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 225
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    .line 228
    const-string/jumbo v3, "version"

    sget-object v4, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 229
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settingslib/HelpUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid package name for context"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string/jumbo v3, "version"

    sget-object v4, Lcom/android/settingslib/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method
