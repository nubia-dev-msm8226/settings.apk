.class Lcom/android/settings/dashboard/SearchResultsSummary$1;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 p3, p3, -0x1

    .line 179
    if-gez p3, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-static {v4}, Lcom/android/settings/dashboard/SearchResultsSummary;->-get1(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->-get0(Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v10

    .line 184
    .local v10, "cursor":Landroid/database/Cursor;
    move/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 186
    const/4 v4, 0x6

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "className":Ljava/lang/String;
    const/4 v4, 0x7

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "screenTitle":Ljava/lang/String;
    const/16 v4, 0x9

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "action":Ljava/lang/String;
    const/16 v4, 0xd

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 192
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->needToRevertToInitialFragment()V

    .line 194
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v3, "args":Landroid/os/Bundle;
    const-string/jumbo v4, ":settings:fragment_args_key"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static/range {v1 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 216
    .end local v3    # "args":Landroid/os/Bundle;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-static {v4}, Lcom/android/settings/dashboard/SearchResultsSummary;->-wrap0(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    .line 173
    return-void

    .line 200
    :cond_1
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v11, "intent":Landroid/content/Intent;
    const/16 v4, 0xa

    .line 202
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, "targetPackage":Ljava/lang/String;
    const/16 v4, 0xb

    .line 204
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, "targetClass":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    :cond_2
    :goto_1
    const-string/jumbo v4, ":settings:fragment_args_key"

    invoke-virtual {v11, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1, v11}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :cond_3
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v14, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v9, "component":Landroid/content/ComponentName;
    invoke-virtual {v11, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method
