.class Lcom/android/settings/DevelopmentSettings$4;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$4;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$4;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2018
    return-void

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$4;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->-wrap1(Lcom/android/settings/DevelopmentSettings;)V

    .line 2016
    return-void
.end method
