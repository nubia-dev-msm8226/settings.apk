.class Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 783
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    iget-object v1, v1, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->-get0(Lcom/android/settings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap0(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V

    .line 785
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap4(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    .line 788
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0
.end method
