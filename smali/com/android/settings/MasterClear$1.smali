.class Lcom/android/settings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isCarrierDemoUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    new-instance v1, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;-><init>()V

    .line 123
    .local v1, "passwordDialog":Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;
    iget-object v2, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v2}, Lcom/android/settings/MasterClear;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 124
    .local v0, "fm":Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    .end local v0    # "fm":Landroid/app/FragmentManager;
    .end local v1    # "passwordDialog":Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v0    # "fm":Landroid/app/FragmentManager;
    .restart local v1    # "passwordDialog":Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;
    :cond_1
    invoke-virtual {v1, v0, v3}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0    # "fm":Landroid/app/FragmentManager;
    .end local v1    # "passwordDialog":Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const/16 v3, 0x37

    invoke-static {v2, v3}, Lcom/android/settings/MasterClear;->-wrap0(Lcom/android/settings/MasterClear;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v2}, Lcom/android/settings/MasterClear;->-wrap1(Lcom/android/settings/MasterClear;)V

    goto :goto_0
.end method
