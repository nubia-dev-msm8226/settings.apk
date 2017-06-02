.class Lmokee/support/widget/snackbar/SnackbarManager$2;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$parent:Landroid/view/ViewGroup;

.field private final synthetic val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

.field private final synthetic val$usePhoneLayout:Z


# direct methods
.method constructor <init>(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    iput-object p2, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$parent:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$usePhoneLayout:Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-static {}, Lmokee/support/widget/snackbar/SnackbarManager;->getCurrentSnackbar()Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    .line 113
    .local v0, "currentSnackbar":Lmokee/support/widget/snackbar/Snackbar;
    if-nez v0, :cond_0

    .line 124
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->access$0(Ljava/lang/ref/WeakReference;)V

    .line 125
    iget-object v1, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$parent:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$usePhoneLayout:Z

    invoke-virtual {v1, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->show(Landroid/view/ViewGroup;Z)V

    .line 126
    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    :cond_1
    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->dismiss()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->isDimissing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {v0, v3}, Lmokee/support/widget/snackbar/Snackbar;->dismissAnimation(Z)Lmokee/support/widget/snackbar/Snackbar;

    .line 116
    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->dismissByReplace()V

    .line 117
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->access$0(Ljava/lang/ref/WeakReference;)V

    .line 118
    iget-object v1, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->showAnimation(Z)Lmokee/support/widget/snackbar/Snackbar;

    .line 119
    iget-object v1, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$parent:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lmokee/support/widget/snackbar/SnackbarManager$2;->val$usePhoneLayout:Z

    invoke-virtual {v1, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->showByReplace(Landroid/view/ViewGroup;Z)V

    .line 120
    return-void
.end method
