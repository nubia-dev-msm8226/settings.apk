.class public Lcom/android/settings/qstile/DevelopmentTiles;
.super Ljava/lang/Object;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/qstile/DevelopmentTiles$GPUProfiling;,
        Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;
    }
.end annotation


# static fields
.field static final TILE_CLASSES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    const-class v1, Lcom/android/settings/qstile/DevelopmentTiles$GPUProfiling;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    sput-object v0, Lcom/android/settings/qstile/DevelopmentTiles;->TILE_CLASSES:[Ljava/lang/Class;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTilesEnabled(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 37
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v6, Lcom/android/settings/qstile/DevelopmentTiles;->TILE_CLASSES:[Ljava/lang/Class;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    .line 38
    .local v0, "cls":Ljava/lang/Class;
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    if-eqz p1, :cond_0

    move v2, v3

    .line 38
    :goto_1
    invoke-virtual {v1, v8, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 37
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 40
    goto :goto_1

    .line 35
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_1
    return-void
.end method
