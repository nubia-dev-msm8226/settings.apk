.class Lcom/android/settings/sim/SimSettings$SimEnablerPreference;
.super Lcom/android/settings/sim/SimSettings$SimPreference;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;,
        Lcom/android/settings/sim/SimSettings$SimEnablerPreference$2;,
        Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;,
        Lcom/android/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;
    }
.end annotation


# instance fields
.field private mCmdInProgress:Z

.field private mCurrentUiccProvisionState:Z

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mSwitch:Landroid/widget/CompoundButton;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "newProvisionedState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->processSetUiccDone(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    .line 465
    const/4 v3, 0x0

    const v4, 0x101008f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/telephony/SubscriptionInfo;I)V

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 780
    new-instance v0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$1;-><init>(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 794
    new-instance v0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$2;-><init>(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 802
    new-instance v0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$3;-><init>(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 466
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    .line 464
    return-void
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 769
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 771
    const/4 p1, 0x0

    .line 768
    .end local p1    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method private getProvisionStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-get6(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private getProvisionedSlotId()I
    .locals 6

    .prologue
    .line 738
    const/4 v0, -0x1

    .line 740
    .local v0, "activeSlotId":I
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get5(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 741
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 742
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 743
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 744
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 745
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    .line 748
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method private handleUserRequest()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 602
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    const-string/jumbo v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 605
    const v2, 0x7f0c02bf

    invoke-direct {p0, v5, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    .line 606
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get3(Lcom/android/settings/sim/SimSettings;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 609
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 611
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call state for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not idle, EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 614
    const v2, 0x7f0c02c0

    invoke-direct {p0, v5, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    .line 615
    return-void

    .line 608
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "subId":[I
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-nez v2, :cond_4

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->getNumOfSubsProvisioned()I

    move-result v2

    if-le v2, v6, :cond_3

    .line 621
    const-string/jumbo v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 622
    invoke-direct {p0, v6, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    .line 601
    :goto_1
    return-void

    .line 624
    :cond_3
    const-string/jumbo v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 625
    const v2, 0x7f0c02c1

    invoke-direct {p0, v5, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    .line 626
    return-void

    .line 629
    :cond_4
    const-string/jumbo v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V

    goto :goto_1
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 480
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 484
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 485
    const-string/jumbo v2, "airplane_mode_on"

    .line 484
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 846
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 850
    return-void
.end method

.method private processSetUiccDone(II)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "newProvisionedState"    # I

    .prologue
    const/16 v3, 0x7d0

    .line 679
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v3}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 680
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;III)V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 678
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 470
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 469
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .prologue
    .line 475
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 476
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 474
    return-void
.end method

.method private sendUiccProvisioningRequest()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    return-void

    .line 638
    :cond_0
    new-instance v0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;-><init>(Lcom/android/settings/sim/SimSettings$SimEnablerPreference;Lcom/android/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    return-void
.end method

.method private setChecked(Z)V
    .locals 3
    .param p1, "uiccProvisionState"    # Z

    .prologue
    const/4 v2, 0x0

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChecked: uiccProvisionState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 548
    iget-boolean v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 552
    iput-boolean p1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    .line 543
    :cond_1
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 9
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const v6, 0x7f0c02bc

    const v8, 0x104000a

    const/4 v7, 0x0

    .line 685
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get0(Lcom/android/settings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 688
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 689
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 692
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 732
    :goto_0
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/sim/SimSettings;->-set0(Lcom/android/settings/sim/SimSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 733
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get0(Lcom/android/settings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 734
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get0(Lcom/android/settings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 684
    return-void

    .line 695
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 696
    const v5, 0x7f0e0028

    .line 695
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 697
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 698
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 697
    if-ne v4, v5, :cond_0

    .line 699
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 701
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->getProvisionedSlotId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 700
    const v6, 0x7f0c02be

    .line 699
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "message":Ljava/lang/String;
    :goto_1
    const v4, 0x7f0c02bd

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 709
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 710
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 711
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x1040009

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 712
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 703
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 707
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_2

    .line 716
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 717
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 722
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    if-eqz v4, :cond_2

    .line 723
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c02c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "msg":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 726
    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 724
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c02c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 752
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0c02c2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 757
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/settings/sim/SimSettings;->-set1(Lcom/android/settings/sim/SimSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 758
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 759
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 762
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 763
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 765
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/16 v4, 0x7530

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 751
    return-void

    .line 755
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c02c3

    goto :goto_0
.end method


# virtual methods
.method public cleanUpPendingDialogs()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-get0(Lcom/android/settings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 775
    return-void
.end method

.method protected determineSummary()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 558
    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 559
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    .line 560
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c02ba

    .line 559
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "state":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 562
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    .line 561
    const v3, 0x7f0c02b8

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 560
    .end local v0    # "state":Ljava/lang/CharSequence;
    :cond_0
    const v1, 0x7f0c02bb

    goto :goto_0

    .line 564
    :cond_1
    invoke-super {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->determineSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getNumOfSubsProvisioned()I
    .locals 6

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, "activeSubInfoCount":I
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get5(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 577
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 578
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 579
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method protected isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-super {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 494
    invoke-super {p0, p1}, Lcom/android/settings/sim/SimSettings$SimPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 495
    const-string/jumbo v0, "onBindView...."

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 496
    const v0, 0x7f1100ed

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    .line 497
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-get2(Lcom/android/settings/sim/SimSettings;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 506
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->isValid()Z

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 507
    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->setChecked(Z)V

    .line 493
    :goto_2
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2

    :cond_1
    move v0, v1

    .line 506
    goto :goto_0

    :cond_2
    move v1, v2

    .line 507
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 589
    iput-boolean p2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->handleUserRequest()V

    .line 588
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 513
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 514
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get2(Lcom/android/settings/sim/SimSettings;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get6(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    .line 520
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get2(Lcom/android/settings/sim/SimSettings;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-interface {v4, v5}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v4

    .line 519
    aput v4, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    invoke-super {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 512
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get6(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get pref, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->-get6(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    const/4 v4, 0x1

    aput v4, v2, v3

    goto :goto_0
.end method
