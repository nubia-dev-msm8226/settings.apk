.class Lcom/android/settings/applications/DefaultBrowserPreference$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultBrowserPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultBrowserPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/DefaultBrowserPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/DefaultBrowserPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/DefaultBrowserPreference;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/applications/DefaultBrowserPreference$2;->this$0:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/DefaultBrowserPreference$2;->this$0:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->-get0(Lcom/android/settings/applications/DefaultBrowserPreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/DefaultBrowserPreference$2;->this$0:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v1}, Lcom/android/settings/applications/DefaultBrowserPreference;->-get1(Lcom/android/settings/applications/DefaultBrowserPreference;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 156
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 161
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 166
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 171
    return-void
.end method
