.class Lcom/android/settings/ApplicationSettings$1;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApplicationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApplicationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ApplicationSettings;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/ApplicationSettings$1;->this$0:Lcom/android/settings/ApplicationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p2

    .line 77
    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ApplicationSettings$1;->this$0:Lcom/android/settings/ApplicationSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/ApplicationSettings;->handleUpdateAppInstallLocation(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    return v1
.end method