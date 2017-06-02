.class final Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpinnerItemSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SupportItemAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SupportItemAdapter;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SupportItemAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/overlay/SupportFeatureProvider;->getPhoneSupportCountryCodes()Ljava/util/List;

    move-result-object v0

    .line 494
    .local v0, "countryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    .local v1, "selectedCountry":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v2, v1}, Lcom/android/settings/dashboard/SupportItemAdapter;->-set0(Lcom/android/settings/dashboard/SupportItemAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->-wrap0(Lcom/android/settings/dashboard/SupportItemAdapter;)V

    .line 492
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
