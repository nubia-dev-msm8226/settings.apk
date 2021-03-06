.class public Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasurementDetails"
.end annotation


# instance fields
.field public appsSize:Landroid/util/SparseLongArray;

.field public availSize:J

.field public cacheSize:J

.field public mediaSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public miscSize:Landroid/util/SparseLongArray;

.field public totalSize:J

.field public usersSize:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    .line 128
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    .line 79
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MeasurementDetails: [totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " availSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, " cacheSize: "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget-wide v2, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 132
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, " mediaSize: "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, " miscSize: "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "usersSize: "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "]"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
