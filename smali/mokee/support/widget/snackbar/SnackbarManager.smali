.class public Lmokee/support/widget/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# static fields
.field private static final MAIN_THREAD:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String;

.field private static snackbarReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmokee/support/widget/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Lmokee/support/widget/snackbar/SnackbarManager;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmokee/support/widget/snackbar/SnackbarManager;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmokee/support/widget/snackbar/SnackbarManager;->MAIN_THREAD:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$0(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lmokee/support/widget/snackbar/SnackbarManager;->snackbarReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static dismiss()V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lmokee/support/widget/snackbar/SnackbarManager;->getCurrentSnackbar()Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    .line 135
    .local v0, "currentSnackbar":Lmokee/support/widget/snackbar/Snackbar;
    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v1, Lmokee/support/widget/snackbar/SnackbarManager;->MAIN_THREAD:Landroid/os/Handler;

    new-instance v2, Lmokee/support/widget/snackbar/SnackbarManager$3;

    invoke-direct {v2, v0}, Lmokee/support/widget/snackbar/SnackbarManager$3;-><init>(Lmokee/support/widget/snackbar/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static getCurrentSnackbar()Lmokee/support/widget/snackbar/Snackbar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    sget-object v0, Lmokee/support/widget/snackbar/SnackbarManager;->snackbarReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 152
    return-object v1

    .line 150
    :cond_0
    sget-object v0, Lmokee/support/widget/snackbar/SnackbarManager;->snackbarReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/support/widget/snackbar/Snackbar;

    return-object v0
.end method

.method public static show(Lmokee/support/widget/snackbar/Snackbar;)V
    .locals 3
    .param p0, "snackbar"    # Lmokee/support/widget/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {p0, v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v1, Lmokee/support/widget/snackbar/SnackbarManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Couldn\'t get Activity from the Snackbar\'s Context. Try calling #show(Snackbar, Activity) instead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static show(Lmokee/support/widget/snackbar/Snackbar;Landroid/app/Activity;)V
    .locals 2
    .param p0, "snackbar"    # Lmokee/support/widget/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    sget-object v0, Lmokee/support/widget/snackbar/SnackbarManager;->MAIN_THREAD:Landroid/os/Handler;

    new-instance v1, Lmokee/support/widget/snackbar/SnackbarManager$1;

    invoke-direct {v1, p0, p1}, Lmokee/support/widget/snackbar/SnackbarManager$1;-><init>(Lmokee/support/widget/snackbar/Snackbar;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public static show(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "snackbar"    # Lmokee/support/widget/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->shouldUsePhoneLayout(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V

    .line 97
    return-void
.end method

.method public static show(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p0, "snackbar"    # Lmokee/support/widget/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "usePhoneLayout"    # Z

    .prologue
    .line 109
    sget-object v0, Lmokee/support/widget/snackbar/SnackbarManager;->MAIN_THREAD:Landroid/os/Handler;

    new-instance v1, Lmokee/support/widget/snackbar/SnackbarManager$2;

    invoke-direct {v1, p0, p1, p2}, Lmokee/support/widget/snackbar/SnackbarManager$2;-><init>(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
