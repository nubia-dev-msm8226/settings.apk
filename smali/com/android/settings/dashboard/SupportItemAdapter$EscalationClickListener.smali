.class final Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EscalationClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SupportItemAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SupportItemAdapter;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SupportItemAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 427
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get0(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/accounts/Account;

    move-result-object v5

    if-nez v5, :cond_1

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 430
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    .line 431
    const/16 v5, 0x1e0

    .line 430
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 432
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    .line 433
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/settings/overlay/SupportFeatureProvider;->getAccountLoginIntent()Landroid/content/Intent;

    move-result-object v5

    .line 432
    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    .line 438
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v6}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSignInHelpIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 437
    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get2(Lcom/android/settings/dashboard/SupportItemAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    .line 446
    const/16 v5, 0x1e1

    .line 445
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 447
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-wrap1(Lcom/android/settings/dashboard/SupportItemAdapter;I)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    .line 451
    const/16 v5, 0x1e2

    .line 450
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 452
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-wrap1(Lcom/android/settings/dashboard/SupportItemAdapter;I)V

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_0

    .line 458
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v5

    .line 459
    iget-object v6, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v6}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 458
    invoke-interface {v5, v6, v4}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v3

    .line 460
    .local v3, "phone":Lcom/android/settings/support/SupportPhone;
    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {v3}, Lcom/android/settings/support/SupportPhone;->getDialIntent()Landroid/content/Intent;

    move-result-object v2

    .line 462
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 465
    .local v0, "canDial":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 466
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    .line 467
    const/16 v5, 0x1e5

    .line 466
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 468
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0    # "canDial":Z
    :cond_3
    move v0, v4

    .line 462
    goto :goto_1

    .line 474
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "phone":Lcom/android/settings/support/SupportPhone;
    :pswitch_5
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v4

    .line 475
    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 474
    invoke-interface {v4, v5, v0}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v3

    .line 477
    .restart local v3    # "phone":Lcom/android/settings/support/SupportPhone;
    invoke-static {v3}, Lcom/android/settings/support/SupportPhoneDialogFragment;->newInstance(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/support/SupportPhoneDialogFragment;

    move-result-object v1

    .line 478
    .local v1, "fragment":Lcom/android/settings/support/SupportPhoneDialogFragment;
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    .line 479
    const/16 v5, 0x1e6

    .line 478
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 480
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 481
    const-string/jumbo v5, "SupportPhoneDialog"

    .line 480
    invoke-virtual {v1, v4, v5}, Lcom/android/settings/support/SupportPhoneDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1020014
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 443
    :pswitch_data_1
    .packed-switch 0x1020014
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 456
    :pswitch_data_2
    .packed-switch 0x1020014
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
