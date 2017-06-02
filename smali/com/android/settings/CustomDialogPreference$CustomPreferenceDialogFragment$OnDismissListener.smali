.class Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;
.super Ljava/lang/Object;
.source "CustomDialogPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDismissListener"
.end annotation


# instance fields
.field private final mDialog:Landroid/content/DialogInterface;

.field private final mWhich:I

.field final synthetic this$1:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->this$1:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p3, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mWhich:I

    .line 98
    iput-object p2, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->this$1:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    iget-object v1, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    iget v2, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mWhich:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->this$1:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-static {v0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->-wrap0(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    iget v2, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mWhich:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/CustomDialogPreference;->onDismissDialog(Landroid/content/DialogInterface;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    :cond_0
    return-void
.end method
