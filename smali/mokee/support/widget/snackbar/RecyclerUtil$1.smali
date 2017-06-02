.class Lmokee/support/widget/snackbar/RecyclerUtil$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/RecyclerUtil;->setScrollListener(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$snackbar:Lmokee/support/widget/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lmokee/support/widget/snackbar/Snackbar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmokee/support/widget/snackbar/RecyclerUtil$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 34
    iget-object v0, p0, Lmokee/support/widget/snackbar/RecyclerUtil$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->dismiss()V

    .line 35
    return-void
.end method
