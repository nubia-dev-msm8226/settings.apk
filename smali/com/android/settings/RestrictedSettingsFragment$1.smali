.class Lcom/android/settings/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/RestrictedSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RestrictedSettingsFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/RestrictedSettingsFragment;->-get0(Lcom/android/settings/RestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->-set1(Lcom/android/settings/RestrictedSettingsFragment;Z)Z

    .line 81
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->-set0(Lcom/android/settings/RestrictedSettingsFragment;Z)Z

    .line 78
    :cond_0
    return-void
.end method
