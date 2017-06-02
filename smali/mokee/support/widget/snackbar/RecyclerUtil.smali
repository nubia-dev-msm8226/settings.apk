.class Lmokee/support/widget/snackbar/RecyclerUtil;
.super Ljava/lang/Object;
.source "RecyclerUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setScrollListener(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/View;)V
    .locals 2
    .param p0, "snackbar"    # Lmokee/support/widget/snackbar/Snackbar;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    move-object v0, p1

    .line 29
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 30
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Lmokee/support/widget/snackbar/RecyclerUtil$1;

    invoke-direct {v1, p0}, Lmokee/support/widget/snackbar/RecyclerUtil$1;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 37
    return-void
.end method
