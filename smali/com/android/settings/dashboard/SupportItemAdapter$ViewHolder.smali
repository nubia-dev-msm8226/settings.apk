.class final Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field final iconView:Landroid/widget/ImageView;

.field final summary1View:Landroid/widget/TextView;

.field final summary2View:Landroid/widget/TextView;

.field final text1View:Landroid/widget/TextView;

.field final text2View:Landroid/widget/TextView;

.field final tileSummaryView:Landroid/widget/TextView;

.field final tileTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 521
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 522
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 523
    const v0, 0x7f11025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    .line 524
    const v0, 0x7f110260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    .line 525
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    .line 526
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    .line 527
    const v0, 0x7f110261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary1View:Landroid/widget/TextView;

    .line 528
    const v0, 0x7f110262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary2View:Landroid/widget/TextView;

    .line 520
    return-void
.end method
