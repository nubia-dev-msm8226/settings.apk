.class public final Lmokee/hardware/MKHardwareManager;
.super Ljava/lang/Object;
.source "MKHardwareManager.java"


# static fields
.field private static final BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEATURE_ADAPTIVE_BACKLIGHT:I = 0x1

.field public static final FEATURE_AUTO_CONTRAST:I = 0x1000

.field public static final FEATURE_COLOR_BALANCE:I = 0x20000

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0x2

.field public static final FEATURE_DISPLAY_COLOR_CALIBRATION:I = 0x4

.field public static final FEATURE_DISPLAY_GAMMA_CALIBRATION:I = 0x8

.field public static final FEATURE_DISPLAY_MODES:I = 0x2000

.field public static final FEATURE_HIGH_TOUCH_SENSITIVITY:I = 0x10

.field public static final FEATURE_KEY_DISABLE:I = 0x20

.field public static final FEATURE_LONG_TERM_ORBITS:I = 0x40

.field public static final FEATURE_PERSISTENT_STORAGE:I = 0x4000

.field public static final FEATURE_PICTURE_ADJUSTMENT:I = 0x40000

.field public static final FEATURE_SERIAL_NUMBER:I = 0x80

.field public static final FEATURE_SUNLIGHT_ENHANCEMENT:I = 0x100

.field public static final FEATURE_TAP_TO_WAKE:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_THERMAL_MONITOR:I = 0x8000

.field public static final FEATURE_TOUCHSCREEN_GESTURES:I = 0x80000

.field public static final FEATURE_TOUCH_HOVERING:I = 0x800

.field public static final FEATURE_UNIQUE_DEVICE_ID:I = 0x10000

.field public static final FEATURE_VIBRATOR:I = 0x400

.field private static sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

.field private static sService:Lmokee/hardware/IMKHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 182
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 185
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 186
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 187
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 188
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 189
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 190
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmokee/hardware/MKHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 201
    iput-object v0, p0, Lmokee/hardware/MKHardwareManager;->mContext:Landroid/content/Context;

    .line 205
    :goto_0
    invoke-static {}, Lmokee/hardware/MKHardwareManager;->getService()Lmokee/hardware/IMKHardwareService;

    move-result-object v1

    sput-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    const-string/jumbo v2, "org.mokee.hardware"

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 203
    :cond_1
    iput-object p1, p0, Lmokee/hardware/MKHardwareManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v1, "MKHardwareManager"

    const-string/jumbo v2, "Unable to get MKHardwareService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 1005
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    if-nez v0, :cond_0

    .line 1006
    const-string/jumbo v0, "MKHardwareManager"

    const-string/jumbo v1, "not connected to MKHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x0

    return v0

    .line 1009
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getArrayValue([III)I
    .locals 1
    .param p1, "arr"    # [I
    .param p2, "idx"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 332
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 333
    :cond_0
    return p3

    .line 336
    :cond_1
    aget v0, p1, p2

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lmokee/hardware/MKHardwareManager;

    invoke-direct {v0, p0}, Lmokee/hardware/MKHardwareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/hardware/MKHardwareManager;->sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

    .line 224
    :cond_0
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

    return-object v0
.end method

.method public static getService()Lmokee/hardware/IMKHardwareService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    return-object v1

    .line 232
    :cond_0
    const-string/jumbo v1, "mkhardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 234
    invoke-static {v0}, Lmokee/hardware/IMKHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/hardware/IMKHardwareService;

    move-result-object v1

    sput-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    .line 235
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    return-object v1

    .line 237
    :cond_1
    return-object v2
.end method

.method private getVibratorIntensityArray()[I
    .locals 2

    .prologue
    .line 362
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v1}, Lmokee/hardware/IMKHardwareService;->getVibratorIntensity()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 365
    :catch_0
    move-exception v0

    .line 367
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 785
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v1}, Lmokee/hardware/IMKHardwareService;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 788
    :catch_0
    move-exception v0

    .line 790
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSupportedFeatures()I
    .locals 2

    .prologue
    .line 245
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v1}, Lmokee/hardware/IMKHardwareService;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 250
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getVibratorDefaultIntensity()I
    .locals 3

    .prologue
    .line 381
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorIntensity()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMaxIntensity()I
    .locals 3

    .prologue
    .line 395
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMinIntensity()I
    .locals 3

    .prologue
    .line 388
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorWarningIntensity()I
    .locals 3

    .prologue
    .line 402
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lmokee/hardware/MKHardwareManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 270
    const-string/jumbo v2, "FEATURE_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    return v4

    .line 274
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmokee/hardware/MKHardwareManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 275
    .local v1, "f":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    .line 276
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 278
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v2, "MKHardwareManager"

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1
    return v4
.end method

.method public setVibratorIntensity(I)Z
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 415
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v1, p1}, Lmokee/hardware/IMKHardwareService;->setVibratorIntensity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
