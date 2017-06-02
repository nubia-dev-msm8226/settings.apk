.class public Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;
.super Ljava/lang/Object;
.source "ConditionAdapterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDismiss(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 36
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils$1;

    const/4 v2, 0x0

    .line 37
    const/16 v3, 0x30

    .line 36
    invoke-direct {v0, v2, v3, p0}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils$1;-><init>(IILandroid/support/v7/widget/RecyclerView;)V

    .line 59
    .local v0, "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 60
    .local v1, "itemTouchHelper":Landroid/support/v7/widget/helper/ItemTouchHelper;
    invoke-virtual {v1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 35
    return-void
.end method

.method private static animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/view/View;
    .param p2, "detailGroup"    # Landroid/view/View;
    .param p3, "visible"    # Z
    .param p4, "hasButtons"    # Z

    .prologue
    const/4 v2, 0x0

    .line 112
    const v1, 0x7f1100c4

    invoke-static {p2, v1, p4}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    .line 113
    const v1, 0x7f1100c5

    invoke-static {p2, v1, p4}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 115
    .local v0, "beforeBottom":I
    if-eqz p3, :cond_0

    const/4 v1, -0x2

    :goto_0
    invoke-static {p2, v1}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->setHeight(Landroid/view/View;I)V

    .line 116
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    new-instance v1, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils$3;

    invoke-direct {v1, p1, v0, p3, p2}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils$3;-><init>(Landroid/view/View;IZLandroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 111
    return-void

    :cond_0
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public static bindViews(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 11
    .param p0, "condition"    # Lcom/android/settings/dashboard/conditional/Condition;
    .param p1, "view"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "isExpanded"    # Z
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "onExpandListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 66
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100c0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "card":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 70
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100c1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "collapsedGroup":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100c2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 74
    .local v5, "expand":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    const v8, 0x7f0200ba

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz p2, :cond_2

    .line 76
    const v8, 0x7f0c0df2

    .line 75
    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100c3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, "detailGroup":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getActions()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    .local v0, "actions":[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    if-eq p2, v8, :cond_0

    .line 82
    iget-object v9, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v10, 0x7f1100c0

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 83
    array-length v8, v0

    if-lez v8, :cond_4

    const/4 v8, 0x1

    .line 82
    :goto_3
    invoke-static {v9, v10, v4, p2, v8}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 85
    :cond_0
    if-eqz p2, :cond_7

    .line 86
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    const/4 v8, 0x2

    if-ge v6, v8, :cond_7

    .line 88
    if-nez v6, :cond_5

    .line 89
    const v8, 0x7f1100c6

    .line 88
    :goto_5
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, "button":Landroid/widget/Button;
    array-length v8, v0

    if-le v8, v6, :cond_6

    .line 91
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    aget-object v8, v0, v6

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move v7, v6

    .line 94
    .local v7, "index":I
    new-instance v8, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils$2;

    invoke-direct {v8, p0, v7}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils$2;-><init>(Lcom/android/settings/dashboard/conditional/Condition;I)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .end local v7    # "index":I
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 74
    .end local v0    # "actions":[Ljava/lang/CharSequence;
    .end local v1    # "button":Landroid/widget/Button;
    .end local v4    # "detailGroup":Landroid/view/View;
    .end local v6    # "i":I
    :cond_1
    const v8, 0x7f0200bb

    goto :goto_0

    .line 76
    :cond_2
    const v8, 0x7f0c0df1

    goto :goto_1

    .line 81
    .restart local v0    # "actions":[Ljava/lang/CharSequence;
    .restart local v4    # "detailGroup":Landroid/view/View;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 83
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 89
    .restart local v6    # "i":I
    :cond_5
    const v8, 0x7f1100c7

    goto :goto_5

    .line 104
    .restart local v1    # "button":Landroid/widget/Button;
    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 65
    .end local v1    # "button":Landroid/widget/Button;
    .end local v6    # "i":I
    :cond_7
    return-void
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "detailGroup"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method

.method private static setViewVisibility(Landroid/view/View;IZ)V
    .locals 2
    .param p0, "containerView"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 150
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    return-void

    .line 150
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
