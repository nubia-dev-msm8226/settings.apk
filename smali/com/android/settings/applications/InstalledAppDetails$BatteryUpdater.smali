.class Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1198
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 1199
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get0(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v6

    move-object v4, v5

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 1200
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get0(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    .line 1201
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    .line 1200
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 1202
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->-get0(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v3

    .line 1203
    .local v3, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1204
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1205
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 1206
    .local v2, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v6, :cond_1

    .line 1207
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4, v2}, Lcom/android/settings/applications/InstalledAppDetails;->-set1(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;

    .line 1211
    .end local v2    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_0
    return-object v5

    .line 1204
    .restart local v2    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 1215
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1217
    return-void

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1215
    return-void
.end method
