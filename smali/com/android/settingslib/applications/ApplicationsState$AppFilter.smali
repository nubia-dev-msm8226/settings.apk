.class public interface abstract Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppFilter"
.end annotation


# virtual methods
.method public abstract filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
.end method

.method public abstract init()V
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1291
    invoke-interface {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init()V

    .line 1290
    return-void
.end method
