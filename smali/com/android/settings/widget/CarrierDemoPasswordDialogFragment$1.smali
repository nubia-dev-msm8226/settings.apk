.class Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$1;
.super Ljava/lang/Object;
.source "CarrierDemoPasswordDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$1;->this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$1;->this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 64
    .local v0, "parentFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$Callback;

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 66
    check-cast v0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$Callback;

    .end local v0    # "parentFragment":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$Callback;->onPasswordVerified()V

    .line 62
    :cond_0
    return-void
.end method
