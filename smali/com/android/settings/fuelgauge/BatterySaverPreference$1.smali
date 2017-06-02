.class Lcom/android/settings/fuelgauge/BatterySaverPreference$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatterySaverPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference$1;->this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->-wrap0(Lcom/android/settings/fuelgauge/BatterySaverPreference;)V

    .line 74
    return-void
.end method
