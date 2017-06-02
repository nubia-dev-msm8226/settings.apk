.class Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;
.super Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EscalationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;
    }
.end annotation


# instance fields
.field final enabled1:Z

.field final enabled2:Z

.field final summary1:Ljava/lang/CharSequence;

.field final summary2:Ljava/lang/CharSequence;

.field final text1:I

.field final text2:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V

    .line 634
    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    .line 635
    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get5(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    .line 636
    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get2(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary1:Ljava/lang/CharSequence;

    .line 637
    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary2:Ljava/lang/CharSequence;

    .line 638
    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get0(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled1:Z

    .line 639
    invoke-static {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled2:Z

    .line 632
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;)V

    return-void
.end method
