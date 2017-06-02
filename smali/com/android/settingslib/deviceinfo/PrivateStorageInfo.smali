.class public Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
.super Ljava/lang/Object;
.source "PrivateStorageInfo.java"


# instance fields
.field public final freeBytes:J

.field public final totalBytes:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "freeBytes"    # J
    .param p3, "totalBytes"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 36
    iput-wide p3, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 34
    return-void
.end method

.method public static getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 12
    .param p0, "sm"    # Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .prologue
    .line 40
    invoke-interface {p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getPrimaryStorageSize()J

    move-result-wide v8

    .line 41
    .local v8, "totalInternalStorage":J
    const-wide/16 v4, 0x0

    .line 42
    .local v4, "privateFreeBytes":J
    const-wide/16 v6, 0x0

    .line 43
    .local v6, "privateTotalBytes":J
    invoke-interface {p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getVolumes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 44
    .local v0, "info":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    .line 45
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_0

    if-eqz v2, :cond_0

    .line 48
    invoke-static {v0, v8, v9}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_0

    .line 51
    .end local v0    # "info":Landroid/os/storage/VolumeInfo;
    .end local v2    # "path":Ljava/io/File;
    :cond_1
    new-instance v3, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v3
.end method

.method public static getTotalSize(Landroid/os/storage/VolumeInfo;J)J
    .locals 7
    .param p0, "info"    # Landroid/os/storage/VolumeInfo;
    .param p1, "totalInternalStorage"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 68
    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    .line 69
    return-wide p1

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_1

    .line 74
    const-string/jumbo v1, "PrivateStorageInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "info\'s path is null on getTotalSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-wide v4

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    return-wide v2
.end method
