.class Lcom/android/settings/RadioInfo$6;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1083
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v8

    .line 1084
    .local v8, "isImsRegistered":Z
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v2

    .line 1085
    .local v2, "availableVolte":Z
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v4

    .line 1086
    .local v4, "availableWfc":Z
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v3

    .line 1087
    .local v3, "availableVt":Z
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    .line 1089
    .local v1, "availableUt":Z
    if-eqz v8, :cond_0

    .line 1090
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f0c02fb

    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1093
    .local v6, "imsRegString":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f0c02fd

    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, "available":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    .line 1095
    const v11, 0x7f0c02fe

    .line 1094
    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1097
    .local v9, "unavailable":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const/4 v10, 0x5

    new-array v12, v10, [Ljava/lang/Object;

    .line 1098
    const/4 v10, 0x0

    aput-object v6, v12, v10

    .line 1099
    if-eqz v2, :cond_1

    move-object v10, v0

    :goto_1
    const/4 v13, 0x1

    aput-object v10, v12, v13

    .line 1100
    if-eqz v4, :cond_2

    move-object v10, v0

    :goto_2
    const/4 v13, 0x2

    aput-object v10, v12, v13

    .line 1101
    if-eqz v3, :cond_3

    move-object v10, v0

    :goto_3
    const/4 v13, 0x3

    aput-object v10, v12, v13

    .line 1102
    if-eqz v1, :cond_4

    .end local v0    # "available":Ljava/lang/String;
    :goto_4
    const/4 v10, 0x4

    aput-object v0, v12, v10

    .line 1097
    const v10, 0x7f0c02ff

    invoke-virtual {v11, v10, v12}, Lcom/android/settings/RadioInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1104
    .local v7, "imsStatus":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1106
    iget-object v11, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v12, 0x7f0c02fa

    invoke-virtual {v11, v12}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1104
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1109
    .local v5, "imsDialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1111
    const/4 v10, 0x1

    return v10

    .line 1091
    .end local v5    # "imsDialog":Landroid/app/AlertDialog;
    .end local v6    # "imsRegString":Ljava/lang/String;
    .end local v7    # "imsStatus":Ljava/lang/String;
    .end local v9    # "unavailable":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f0c02fc

    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "imsRegString":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "available":Ljava/lang/String;
    .restart local v9    # "unavailable":Ljava/lang/String;
    :cond_1
    move-object v10, v9

    .line 1099
    goto :goto_1

    :cond_2
    move-object v10, v9

    .line 1100
    goto :goto_2

    :cond_3
    move-object v10, v9

    .line 1101
    goto :goto_3

    :cond_4
    move-object v0, v9

    .line 1102
    goto :goto_4
.end method
