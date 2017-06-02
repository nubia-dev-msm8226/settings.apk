.class Lcom/android/settings/dashboard/DashboardAdapter$4;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->showRemoveOption(Landroid/view/View;Lcom/android/settingslib/drawer/Tile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$suggestion:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardAdapter;
    .param p2, "val$suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get2(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-get2(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/settingslib/drawer/Tile;

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    .line 284
    const/16 v2, 0x183

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->disableSuggestion(Lcom/android/settingslib/drawer/Tile;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get4(Lcom/android/settings/dashboard/DashboardAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$4;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V

    .line 289
    const/4 v0, 0x1

    return v0
.end method
