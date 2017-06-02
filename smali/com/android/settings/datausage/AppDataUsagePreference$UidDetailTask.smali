.class Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingslib/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p2, "item"    # Lcom/android/settingslib/AppItem;
    .param p3, "target"    # Lcom/android/settings/datausage/AppDataUsagePreference;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 83
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    .line 84
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 81
    return-void
.end method

.method private static bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p0, "detail"    # Lcom/android/settingslib/net/UidDetail;
    .param p1, "target"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 4
    .param p0, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p1, "item"    # Lcom/android/settingslib/AppItem;
    .param p2, "target"    # Lcom/android/settings/datausage/AppDataUsagePreference;

    .prologue
    const/4 v3, 0x0

    .line 89
    iget v1, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p0, v1, v3}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    .line 90
    .local v0, "cachedDetail":Lcom/android/settingslib/net/UidDetail;
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    .line 88
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    .line 94
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 93
    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settingslib/net/UidDetail;)V
    .locals 1
    .param p1, "result"    # Lcom/android/settingslib/net/UidDetail;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-static {p1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    .line 119
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lcom/android/settingslib/net/UidDetail;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->onPostExecute(Lcom/android/settingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    .line 109
    return-void
.end method
