.class Lcom/android/settings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DreamSettings;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->-get0(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->startDreaming()V

    .line 142
    return-void
.end method
