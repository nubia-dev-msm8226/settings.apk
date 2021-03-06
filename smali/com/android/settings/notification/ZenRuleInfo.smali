.class public Lcom/android/settings/notification/ZenRuleInfo;
.super Ljava/lang/Object;
.source "ZenRuleInfo.java"


# instance fields
.field public configurationActivity:Landroid/content/ComponentName;

.field public defaultConditionId:Landroid/net/Uri;

.field public isSystem:Z

.field public packageLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public ruleInstanceLimit:I

.field public serviceComponent:Landroid/content/ComponentName;

.field public settingsAction:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    if-ne p0, p1, :cond_0

    return v1

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleInfo;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/android/settings/notification/ZenRuleInfo;

    .line 14
    .local v0, "that":Lcom/android/settings/notification/ZenRuleInfo;
    iget-boolean v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    iget-boolean v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 15
    :cond_3
    iget v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    iget v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-eq v3, v4, :cond_4

    return v2

    .line 16
    :cond_4
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 18
    :cond_5
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 19
    :cond_6
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 20
    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 21
    :cond_7
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    .line 22
    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    .line 21
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 23
    :cond_8
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 24
    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 23
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 25
    :cond_9
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 26
    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 25
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 27
    :cond_a
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_18

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    .line 28
    iget-object v2, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_b
    :goto_0
    return v1

    .line 16
    :cond_c
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 17
    :cond_d
    return v2

    .line 18
    :cond_e
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_f
    return v2

    .line 20
    :cond_10
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_11
    return v2

    .line 22
    :cond_12
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_8

    :cond_13
    return v2

    .line 24
    :cond_14
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-eqz v3, :cond_9

    :cond_15
    return v2

    .line 26
    :cond_16
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_a

    :cond_17
    return v2

    .line 28
    :cond_18
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0
.end method
