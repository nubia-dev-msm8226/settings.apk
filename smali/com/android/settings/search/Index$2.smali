.class Lcom/android/settings/search/Index$2;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/Index;

.field final synthetic val$rebuild:Z

.field final synthetic val$res:Landroid/provider/SearchIndexableResource;


# direct methods
.method constructor <init>(Lcom/android/settings/search/Index;ZLandroid/provider/SearchIndexableResource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/search/Index;
    .param p2, "val$rebuild"    # Z
    .param p3, "val$res"    # Landroid/provider/SearchIndexableResource;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings/search/Index$2;->this$0:Lcom/android/settings/search/Index;

    iput-boolean p2, p0, Lcom/android/settings/search/Index$2;->val$rebuild:Z

    iput-object p3, p0, Lcom/android/settings/search/Index$2;->val$res:Landroid/provider/SearchIndexableResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/settings/search/Index$2;->val$rebuild:Z

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/settings/search/Index$2;->this$0:Lcom/android/settings/search/Index;

    iget-object v1, p0, Lcom/android/settings/search/Index$2;->val$res:Landroid/provider/SearchIndexableResource;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->deleteIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/Index$2;->this$0:Lcom/android/settings/search/Index;

    iget-object v1, p0, Lcom/android/settings/search/Index$2;->val$res:Landroid/provider/SearchIndexableResource;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/search/Index$2;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-get2(Lcom/android/settings/search/Index;)Lcom/android/settings/search/Index$UpdateData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 504
    iget-object v0, p0, Lcom/android/settings/search/Index$2;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-wrap5(Lcom/android/settings/search/Index;)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/search/Index$2;->val$res:Landroid/provider/SearchIndexableResource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    .line 498
    return-void
.end method
