.class public interface abstract Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;
.super Ljava/lang/Object;
.source "StorageVolumeProvider.java"


# virtual methods
.method public abstract getPrimaryStorageSize()J
.end method

.method public abstract getVolumes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method
