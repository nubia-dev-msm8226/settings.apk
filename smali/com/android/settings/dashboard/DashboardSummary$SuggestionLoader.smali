.class Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;
.super Landroid/os/AsyncTask;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settingslib/SuggestionParser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/SuggestionParser;->getSuggestions()Ljava/util/List;

    move-result-object v5

    .line 248
    .local v5, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 249
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 250
    .local v4, "suggestion":Lcom/android/settingslib/drawer/Tile;
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/SuggestionsChecks;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/dashboard/SuggestionsChecks;->isSuggestionComplete(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 251
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->disableSuggestion(Lcom/android/settingslib/drawer/Tile;)V

    .line 252
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v2

    .line 248
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    if-eqz v0, :cond_0

    .line 254
    invoke-static {v0, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 256
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const/16 v6, 0x180

    .line 257
    invoke-static {v0, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    :cond_2
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tiles"    # Ljava/lang/Object;

    .prologue
    .line 266
    check-cast p1, Ljava/util/List;

    .end local p1    # "tiles":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 269
    return-void

    .line 272
    :cond_0
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v1

    .line 273
    .local v1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategoriesAndSuggestions(Ljava/util/List;Ljava/util/List;)V

    .line 266
    return-void
.end method
