.class public abstract Lcom/android/settings/applications/AppCounter;
.super Landroid/os/AsyncTask;
.source "AppCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mIpm:Landroid/content/pm/IPackageManager;

.field protected final mPm:Landroid/content/pm/PackageManager;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppCounter;->mPm:Landroid/content/pm/PackageManager;

    .line 37
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppCounter;->mIpm:Landroid/content/pm/IPackageManager;

    .line 38
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppCounter;->mUm:Landroid/os/UserManager;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "count":I
    iget-object v7, p0, Lcom/android/settings/applications/AppCounter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 48
    .local v5, "user":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/applications/AppCounter;->mIpm:Landroid/content/pm/IPackageManager;

    .line 51
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2000

    .line 48
    :goto_1
    const v9, 0x8280

    or-int/2addr v7, v9

    .line 52
    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    .line 48
    invoke-interface {v8, v7, v9}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 53
    .local v4, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 54
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppCounter;->includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 51
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 61
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 58
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppCounter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract includeInCount(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method protected abstract onCountComplete(I)V
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppCounter;->onCountComplete(I)V

    .line 65
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "count":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppCounter;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
