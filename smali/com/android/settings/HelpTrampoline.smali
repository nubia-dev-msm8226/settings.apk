.class public Lcom/android/settings/HelpTrampoline;
.super Landroid/app/Activity;
.source "HelpTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.TEXT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 38
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 41
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/settings/HelpTrampoline;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "id":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->finish()V

    .line 32
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "HelpTrampoline"

    const-string/jumbo v6, "Failed to resolve help"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
