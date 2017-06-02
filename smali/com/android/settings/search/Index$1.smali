.class Lcom/android/settings/search/Index$1;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/Index;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/Index;


# direct methods
.method constructor <init>(Lcom/android/settings/search/Index;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/search/Index;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/search/Index$1;->this$0:Lcom/android/settings/search/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 310
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/search/Index$1;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v7}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 314
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 315
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 316
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 317
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/settings/search/Index$1;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v7, v1}, Lcom/android/settings/search/Index;->-wrap2(Lcom/android/settings/search/Index;Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 315
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 321
    .local v0, "authority":Ljava/lang/String;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 323
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/search/Index$1;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v7, v5, v0}, Lcom/android/settings/search/Index;->-wrap1(Lcom/android/settings/search/Index;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    iget-object v7, p0, Lcom/android/settings/search/Index$1;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v7, v5, v0}, Lcom/android/settings/search/Index;->-wrap3(Lcom/android/settings/search/Index;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 327
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/search/Index$1;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v7}, Lcom/android/settings/search/Index;->-get2(Lcom/android/settings/search/Index;)Lcom/android/settings/search/Index$UpdateData;

    move-result-object v7

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    .line 328
    iget-object v7, p0, Lcom/android/settings/search/Index$1;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v7}, Lcom/android/settings/search/Index;->-wrap5(Lcom/android/settings/search/Index;)V

    .line 309
    return-void
.end method
