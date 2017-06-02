.class Lcom/android/settings/applications/LockPatternActivity$3;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/LockPatternActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    move-object v0, p1

    .line 127
    check-cast v0, Landroid/widget/Button;

    .line 128
    .local v0, "btn":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v3, v3, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/settings/applications/LockPatternActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 129
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 132
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "pattern_lock_protected_apps"

    .line 133
    iget-object v4, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v4, v4, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    .line 126
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    .line 139
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v4}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 142
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v4}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 143
    const v5, 0x7f0c07d2

    .line 142
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c07d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
