.class Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;
.super Landroid/os/Handler;
.source "SimSettings.java"


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
    .line 802
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 806
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 808
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    iget-object v5, v5, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v5}, Lcom/android/settings/sim/SimSettings;->-wrap1(Lcom/android/settings/sim/SimSettings;)V

    .line 811
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 812
    .local v2, "result":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 813
    .local v1, "newProvisionedState":I
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVT_SHOW_RESULT_DLG result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 814
    const-string/jumbo v7, " new provisioned state "

    .line 813
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap1(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 815
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v5}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 816
    if-eqz v2, :cond_1

    .line 817
    if-ne v1, v3, :cond_0

    .line 818
    const v0, 0x7f0c02c5

    .line 820
    .local v0, "msgId":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    const/4 v4, 0x2

    invoke-static {v3, v4, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap5(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;II)V

    .line 825
    .end local v0    # "msgId":I
    :goto_2
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-get0(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 819
    :cond_0
    const v0, 0x7f0c02c7

    .restart local v0    # "msgId":I
    goto :goto_1

    .line 822
    .end local v0    # "msgId":I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    if-ne v1, v3, :cond_2

    :goto_3
    invoke-static {v5, v3}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-set1(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Z)Z

    .line 823
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    const/4 v5, 0x3

    invoke-static {v3, v5, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap5(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;II)V

    goto :goto_2

    :cond_2
    move v3, v4

    .line 822
    goto :goto_3

    .line 829
    .end local v1    # "newProvisionedState":I
    .end local v2    # "result":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    const-string/jumbo v4, "EVT_SHOW_PROGRESS_DLG"

    invoke-static {v3, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap1(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 830
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap6(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V

    goto :goto_0

    .line 834
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    const-string/jumbo v4, "EVT_PROGRESS_DLG_TIME_OUT"

    invoke-static {v3, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap1(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    iget-object v4, v4, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->-wrap0(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V

    .line 837
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->update()V

    goto/16 :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
